# flat-white
A Hexo Theme


# Usage
## Install
```
$ git clone git@github.com:KID-WuMeng/flat-white.git themes/flat-white
```

## Config `_config.yml`:
```yml
theme: flat-white
author: KID.WuMeng
description: less is more.
post-sort: desc    # asc | desc
post-mode: summary # summary | list
disqus-name: kid-wumeng

sns:
  - name: 'weibo'
    link: 'http://weibo.com/kidwumeng/'
    icon: 'http://xxx.png'  # Use the default icon if no this field.
  - name: 'github'
    link: 'https://github.com/KID-WuMeng/'
  - name: 'mail'
    link: 'kid.wumeng@gmail.com'  # Must be a email address.
# Now, the `douban`, `facebook`, `github`, `mail`, `weibo` has default icon.
```

## ABOUT ME & LINKS
Add the `about-me/index.md` & `links/index.md` to `source`