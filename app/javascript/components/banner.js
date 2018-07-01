import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Mojito", "Moscow Mule", "Gin Fizz", "Kamikaze"],
    typeSpeed: 150,
    loop: true
  });
}

export { loadDynamicBannerText };
