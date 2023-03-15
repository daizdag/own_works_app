document.addEventListener('DOMContentLoaded', function() {
  const tabs = document.querySelectorAll('.tab');

  for (let i = 0; i < tabs.length; i++) {
    tabs[i].addEventListener('click', function() {
      const activeTab = document.querySelector('.tab-active');
      if (activeTab) {
        activeTab.classList.remove('tab-active');
      }
      this.classList.add('tab-active');
      const activeBox = document.querySelector('.box-show');
      if (activeBox) {
        activeBox.classList.remove('box-show');
      }
      const index = Array.prototype.indexOf.call(this.parentNode.children, this);
      document.querySelectorAll('.tabbox')[index].classList.add('box-show');
    });
  }
});

