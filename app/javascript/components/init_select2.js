import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({
    tags: true
  });
};

export { initSelect2 };
console.log('hello from init select2');
