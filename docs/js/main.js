document.addEventListener('DOMContentLoaded', function () {
  
  const giftItems = document.querySelectorAll('.gift-item');
  giftItems.forEach(item => {
    item.addEventListener('click', function () {
      giftItems.forEach(el => el.classList.remove('active'));
      this.classList.add('active');
    });
  });


  const coinsItems = document.querySelectorAll('.buy-coins__item');
  coinsItems.forEach(item => {
    item.addEventListener('click', function () {
      coinsItems.forEach(el => el.classList.remove('active'));
      this.classList.add('active');
    });
  });
});