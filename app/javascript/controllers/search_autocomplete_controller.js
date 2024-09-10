import { Controller } from "@hotwired/stimulus";
import debounce from "lodash.debounce"; // lodashのdebounce機能を使用

export default class extends Controller {
  static targets = ["input", "results"];

  connect() {
    this.inputTarget.addEventListener("input", debounce(this.search.bind(this), 300));
  }

  async search() {
    const query = this.inputTarget.value;
    if (query.length < 2) {
      this.resultsTarget.innerHTML = "";
      return;
    }

    const response = await fetch(`/search_autocomplete?query=${query}`);
    const data = await response.json();
    this.resultsTarget.innerHTML = this.renderResults(data);
  }

  renderResults(data) {
    return data.map(item => `<li class="p-2 cursor-pointer">${item}</li>`).join('');
  }
}
