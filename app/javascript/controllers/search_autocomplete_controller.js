import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "results"];

  connect() {
    // 検索結果のリストに対して1回だけクリックイベントを設定
    this.resultsTarget.addEventListener('click', (event) => {
      const item = event.target.closest('li');
      if (item) {
        this.inputTarget.value = item.dataset.fullText; // フルテキストを入力フィールドにセット
        this.element.querySelector('form').submit();    // フォーム送信
      }
    });
  }

  search(event) {
    const query = this.inputTarget.value.trim();
    if (query === "") {
      this.clearResults();  // クエリが空なら結果をクリア
      return;
    }

    fetch(`/search_autocomplete?query=${encodeURIComponent(query)}`)
      .then(response => response.json())
      .then(data => {
        this.renderResults(data);
      });
  }

  renderResults(results) {
    // 検索結果をリスト形式で表示
    this.resultsTarget.innerHTML = results.map(result => `
      <li class="cursor-pointer p-2 hover:bg-gray-100" data-full-text="${result.fullText}">${result.displayText}</li>
    `).join('');
  }

  clearResults() {
    this.resultsTarget.innerHTML = "";  // 結果をクリア
  }
}
