const image = () => {

// メイン画像を取得
  const mainImage = document.querySelector('.main-image');

  // 他の画像アイコンを取得
  const otherImages = document.querySelectorAll('.other-image img');

  // 他の画像アイコンのクリックイベントを追加
  otherImages.forEach((image) => {
    image.addEventListener('click', () => {
      // クリックされた画像のsrcを取得
      const src = image.getAttribute('src');
      // メイン画像のsrcを変更
      mainImage.setAttribute('src', src);
    });
  });
}


window.addEventListener("load", image);