;(function(){

  var $face = $('.face div')
  var imgSrc = $face.attr('img-src')
  var tempImg = new Image()
  tempImg.src = imgSrc
  tempImg.onload = function(){
    $face.css('background-image', 'url('+imgSrc+')')
  }

    
  var $mode = $('.sidebar .mode')
  var mode = $mode.attr('default-mode')
  $mode.children('[mode='+mode+']').addClass('active')
  
  $mode.children().on('click', function(){
    mode = $(this).attr('mode')
    $('.post-list').attr('mode', mode)
    $mode
      .children('[mode='+mode+']').addClass('active')
      .siblings().removeClass('active')
  })
  
  
  // var $mode = $('.sidebar .mode')
  // var mode = $mode.attr('default-mode')
  // $mode.children('[mode='+mode+']').addClass('active')
  //
  // $mode.children().on('click', function(){
  //   mode = $(this).attr('mode')
  //   $('.post-list').attr('mode', mode)
  //   $mode
  //     .children('[mode='+mode+']').addClass('active')
  //     .siblings().removeClass('active')
  // })

}())