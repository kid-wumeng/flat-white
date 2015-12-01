<!DOCTYPE html>
<html>

{% include 'head.swig' %}

<body>
  <div class="wrap">

    {% include 'sidebar.swig' %}
    
    <link rel="stylesheet" href="/css/post.css">
    <link rel="stylesheet" href="/css/markdown.css">
    <link rel="stylesheet" href="/css/highlight/print-code.css">
    
    <div class="main">
      <div class="post">
        <h1>{{ page.title }}</h1>
        <h2>{{ date( page.date, 'YYYY-M-D' ) }}</h2>
        <hr>
        <div class="content markdown">{{ page.content }}<div>
        <div id="disqus_thread"></div>
      </div>
    </div>

  </div>
  
  <script src="/js/jquery.min.js"></script>
  <script src="/js/markdown.js"></script>
  <script src="/js/disqus.js"></script>
  <script src="//{{ config.disqus_shortname }}.disqus.com/embed.js"></script>
    
</body>
</html>