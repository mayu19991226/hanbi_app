import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "results"];

  connect() {
    // 初期化処理（必要に応じて）
  }

  search(event) {
    // 入力された値に基づいて検索を実行
    const query = this.inputTarget.value;
    fetch(`/search_autocomplete?query=${encodeURIComponent(query)}`)
      .then(response => response.json())
      .then(data => {
        this.renderResults(data);
      });
  }

  renderResults(results) {
    // 検索結果をリストとして表示
    this.resultsTarget.innerHTML = results.map(result => `
      <li class="cursor-pointer p-2 hover:bg-gray-100">${result}</li>
    `).join('');

    // ドロップダウンメニューの項目にクリックイベントを追加
    this.resultsTarget.querySelectorAll('li').forEach(item => {
      item.addEventListener('click', () => {
        this.inputTarget.value = item.textContent;
        this.element.querySelector('form').submit();
      });
    });
  }
}
