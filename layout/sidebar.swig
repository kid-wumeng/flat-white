<div class="sidebar">
  
  <div class="face">
    <img src="{{ config.face }}">
  </div>

  <h1 class="author">{{ config.author }}</h1>
  <p class="desc">{{ config.description }}</p>
  
  <div class="pages">
    <a href="">ABOUT ME</a>
    <a href="">LINKS</a>
  </div>
  
  <div class="categories">
    <a href="{{ url_for() }}">All Categories</a>
    {% for category in site.categories %}
      <a href="{{ url_for(category.path) }}">{{ category.name }}</a>
    {% endfor %}
  </div>
  
  <ul class="options">
    {# mode #}
    <li class="mode" default-mode="{{ config['post-list']['default-mode'] }}">
      <a mode="summary">SUMMARY</a> / <a mode="list">LIST</a>
    </li>
    {# sort #}
    <li>
      <a href="">ASC</a> / <a href="">DESC</a>
    </li>
  </ul>
  
  <div class="sns">
    {% for name, url in config.sns %}
      <a class="{{ name }}" href="{{ url }}" target="_blank"></a>
    {% endfor %}
    <a class="{{ name }}" href="{{ url }}" target="_blank"></a>
    <a class="{{ name }}" href="{{ url }}" target="_blank"></a>
    <a class="{{ name }}" href="{{ url }}" target="_blank"></a>
    <a class="{{ name }}" href="{{ url }}" target="_blank"></a>
    <a class="{{ name }}" href="{{ url }}" target="_blank"></a>
  </div>
  
  <script src="/js/jquery.min.js"></script>
  <script src="/js/sidebar.js"></script>
  
</div>