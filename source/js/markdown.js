;(function(){
  
  var $markdown = $('.markdown').each(function(){
    // h1 ~ h6 前加章节标号
    var h1 = 0, h2 = 0, h3 = 0, h4 = 0, h5 = 0, h6 = 0
    $(this).children('h1,h2,h3,h4,h5,h6').each(function()
    {
      var $h = $(this)

      switch( true ){
        case $h.is('h1'): h1++, h2 = 0, h3 = 0, h4 = 0, h5 = 0, h6 = 0; break
        case $h.is('h2'): h2++, h3 = 0, h4 = 0, h5 = 0, h6 = 0; break
        case $h.is('h3'): h3++, h4 = 0, h5 = 0, h6 = 0; break
        case $h.is('h4'): h4++, h5 = 0, h6 = 0; break
        case $h.is('h5'): h5++, h6 = 0; break
        case $h.is('h6'): h6++; break
      }
      
      var no = h1+'.'+h2+'.'+h3+'.'+h4+'.'+h5+'.'+h6
      no = no.replace(/[.0]+$/,'')
      if(/^\d+$/.test(no)){
        no += '.'
      }
      no += ' '
      $h.prepend(no)
    })
  })

}())