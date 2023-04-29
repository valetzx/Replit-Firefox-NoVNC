# NEW NoVNC Firefox

本项目可以让你在web中访问replit中的firefox浏览器

把这个 https://github.com/valetzx/firefoxonreplit 项目修改了一下，原项目不能保活（虽然已经没必要了，codespace保活滥用会封号）。

这个仓库的内容可以使用频繁访问域名的方式保活 replit 这个小机器，但是部分应用的缓存不会在关闭后保存，比如firefox的cookies等。

本仓库顺便引入了 alist 3.0 作为主页 使用 nginx 管理 novnc 请求，在部署完项目并保活后，可以在 https://novnc.com/noVNC/vnc.html 访问你的vnc桌面。桌面默认fluxbox，可以自行换成xface等

20230217寄

大部分v2梯子，和 alist 几乎都被 replit 封禁了，这边出个新的绕过方式（目前暂时认为是文件名检测）
