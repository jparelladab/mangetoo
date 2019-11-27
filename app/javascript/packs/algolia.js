const listItem = content => `<li class="list-group-item">${content.name} is on MangeToo!</li>`;

const orderedList = (hits) => {
  const content = hits.map(hit => listItem(hit)).join('\n  ');
  return `<ol class="list-group">${content}</ol>`;
};

var client = algoliasearch('IXJHJTOOL7', '72f4a5a32d41e8b7dc3cea5ed765ef62');
var index = client.initIndex('Restaurant');
const input = document.querySelector("#restaurant_name");
input.addEventListener("keyup", (event) => {
  let keyword = input.value;
  index.search(keyword, { hitsPerPage: 10, page: 0 })
  .then(function searchDone(content) {
    console.log(content);
    const hits = content.hits;
    console.log(hits);
    const list = document.querySelector("#name-search-list");
    console.log(list);
    list.innerHTML = '';
    listHTML = orderedList(hits);
    list.insertAdjacentHTML('afterbegin', listHTML);
    });
  })
  // .catch(function searchFailure(err) {
  //   console.error(err);
  // });

