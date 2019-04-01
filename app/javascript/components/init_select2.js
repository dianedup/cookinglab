import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $(document).ready(function() {
    const select2Inputs = document.querySelectorAll('.select2')

    select2Inputs.forEach(input => {
      // console.log(input)

      $(input).select2({
        tags: true
      });
    })
    // $('.select2').select2({
    //   tags: true
    // });
  })
};

export { initSelect2 };
