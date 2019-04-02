const initTagsChoice = () => {
  $(document).ready(function(){
    $(".tag-choice").click(function(){
      $(this).toggleClass("active");
    });
  });
}

export { initTagsChoice };
