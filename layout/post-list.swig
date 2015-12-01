{% if config.posts.sort === 'asc' %}
  {% set orderBy = 'date' %}
{% else %}
  {% set orderBy = '-date' %}
{% endif %}

<link rel="stylesheet" href="/css/post-list.css">
<link rel="stylesheet" href="/css/markdown.css">
<link rel="stylesheet" href="/css/highlight/print-code.css">

<ul class="post-list" mode="{{ config['post-list']['default-mode'] }}">
  {% for post in page.posts.sort(orderBy) %}
  <li>
    <h1><a href="{{ url_for( post.path) }}">{{ post.title }}</a></h1>
    <h2>{{ date( post.date, 'YYYY-M-D' ) }}</h2>
    {% if post.excerpt %}<hr>{% endif %}
    <div class="post markdown">{{ post.excerpt }}</div>
  </li>
  {% endfor %}
</ul>

<script src="/js/markdown.js"></script>