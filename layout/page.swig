<!DOCTYPE html>
<html>

{% include 'head.swig' %}

<body>
  <div class="wrap">

    {% include 'sidebar.swig' %}
    
    <link rel="stylesheet" href="/css/page.css">
    <link rel="stylesheet" href="/css/markdown.css">
    <link rel="stylesheet" href="/css/highlight/print-code.css">
    
    <div class="main">
      <div class="page">
        <h1>{{ page.title }}</h1>
        <hr>
        <div class="content markdown">{{ page.content }}<div>
      </div>
    </div>

  </div>
  
  <script src="/js/jquery.min.js"></script>
  <script src="/js/page.js"></script>
  <script src="/js/markdown.js"></script>
    
</body>
</html>