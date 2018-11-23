import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Mister Cocktail", "Stylé hein ?"],
    typeSpeed: 100,
    loop: true
  });
};

export { loadDynamicBannerText };
