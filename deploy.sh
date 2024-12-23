#!/usr/bin/env bash

set -e

# 1. 构建 Jekyll 站点（生产环境）
JEKYLL_ENV=production bundle exec jekyll build

# 2. 删除本地已有的 gh-pages 分支（如果存在）
git branch -D gh-pages 2>/dev/null || echo "gh-pages branch not found locally."

# 3. 创建孤儿分支 gh-pages（没有历史记录）
git checkout --orphan gh-pages

# 4. 清空工作区（除了 .git）
git rm -rf . 2>/dev/null || echo "Workspace cleaned."

# 5. 将 _site 内容拷贝进来
rsync -av --exclude '.git' --exclude 'deploy.sh' _site/ .

# 6. 提交
git add .
git commit -m "Site updated: $(date +%F-%T)"

# 7. 强制推送到远程 gh-pages 分支
git push origin gh-pages --force

# 8. 切回主分支 (main)
git checkout main

echo "部署完成（孤儿分支方式），已强制覆盖远程 gh-pages 分支。"
