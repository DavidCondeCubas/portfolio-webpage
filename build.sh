npx astro-i18next generate 

# Blog(es)
sed -i '' 's/getCollection("blog")/getCollection("blog.es")/g' './src/pages/es/blog/[...page].astro'
sed -i '' 's/getCollection("blog")/getCollection("blog.es")/g' './src/pages/es/blog/[slug].astro'
sed -i '' 's/getCollection("blog")/getCollection("blog.es")/g' './src/pages/es/blog/tag/[tag]/[...page].astro'

# Project(es)
sed -i '' 's/getCollection("project")/getCollection("project.es")/g' './src/pages/es/project/[...page].astro'
sed -i '' 's/getCollection("project")/getCollection("project.es")/g' './src/pages/es/project/[slug].astro'git 