$(document).ready(function(){
  /* Mark complete */
  $('.todo-checkbox').click(function(e){
    //Get id
    var self = $(this);
    var todoID = self.parents('.todo-container')
                  .attr('id')
                  .split('-')[1];

    $.ajax({
      url: "/todos/" + todoID + "/complete",
      method: 'post',
    }).done(function() {
      //Mark item as checked
      self.removeClass('glyphicon-unchecked').addClass('glyphicon-check');

      //Change alert class
      self.parents('.todo-alert')
        .removeClass('alert-info')
        .addClass('alert-warning')

      //Add strikethrough
      self.parent().siblings().wrapInner('<s></s>');
    });
  });
});