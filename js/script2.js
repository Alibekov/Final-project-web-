function err() {

}
function onResponse(response) {
  if(response.ok) {
    return response.json();
  }
  else {
    err()
    return ;
  }
}
class Dealer {
  constructor(dealerContainer, name, address, phone, email) {
    const card = document.createElement('div');
    const card2 = document.createElement('div')
    const view = document.createElement('div')
    const na = document.createElement('p');
    const ad = document.createElement('span');
    const ph = document.createElement('span');
    const em = document.createElement('span');
    na.innerHTML = name;
    ad.innerHTML = address;
    ph.innerHTML = phone;
    em.innerHTML = email;
    card.className = "card";
    card2.className = "info";
    view.className = "card division";
    card.appendChild(na);
    card2.appendChild(ad);
    card2.appendChild(ph);
    card2.appendChild(em);
    view.appendChild(card);
    view.appendChild(card2);
    dealerContainer.appendChild(view);
  }
}
function onJsonReady(data) {
  this.dealerInfo = data;
  this.printDealers();
}
function printDealers() {
  const dealerContainer = document.getElementById('#cards');
  dealerContainer.innerHTML = '';
  for(const info of this.dealerInfo) {
    const dealer = new Dealer(dealerContainer, info.name, info.address, info.phone, info.email);
  }
}
function load() {
  fetch("http://demo2553909.mockable.io/listDealers").catch(err).then(onResponse).then(onJsonReady);
}