<!DOCTYPE html>
<html>

{% include 'head.swig' %}

<body>
  <div class="wrap">
    
    {% include 'sidebar.swig' %}
    
    <div class="main">
      {% include 'post-list.swig' %}
      {% include 'paginator.swig' %}
    </div>
  
  </div>
</body>
</html>