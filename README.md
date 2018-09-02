= DevOps workshop Notes

Organized by [Kirill Mokevnin](https://github.com/mokevnin)

== Links
- [Prerequisites](https://gist.github.com/mokevnin/d1a941b0a835469b9064ba24d514ffa5)
- [12 factors](https://12factor.net/)
- [ToDo list (tutorial)](https://gist.github.com/mokevnin/02f84fa9d35aad2c8277b3dede147155)
- [Docker hexlet guides](https://guides.hexlet.io/docker/)
- [Article about DevOps](https://habr.com/company/jugru/blog/421757/)
- [Docker with rails](https://docs.docker.com/compose/rails/)
- [Choosing local domain name](https://www.pluralsight.com/blog/software-development/choose-internal-top-level-domain-name)
- [Recommendend books](https://ru.hexlet.io/pages/recommended-books)
- [Best practices for writhing Dockerfile #1](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
- [Best practices for writhing Dockerfile #2](https://cloud.google.com/solutions/best-practices-for-building-containers)
- [Dockerfile linter #3](https://github.com/hadolint/hadolint)
- [About databases in immutable env](https://www.youtube.com/watch?v=TWkkshKU6nQ&t=11400s)
- [Terraformim Selectel](http://vakhov.me/blog/2016/10/13/terraform-like-a-terraformer/index.html)

=== Ansible setup example
- [deploy.yml](https://github.com/hexlet-basics/hexlet_basics/blob/4082255a835972f9fa4c90b062b1696d89833df8/ansible/deploy.yml)
- [common vars](https://github.com/hexlet-basics/hexlet_basics/blob/4082255a835972f9fa4c90b062b1696d89833df8/ansible/group_vars/all.yml)
- [prod vars](https://github.com/hexlet-basics/hexlet_basics/blob/4082255a835972f9fa4c90b062b1696d89833df8/ansible/production/group_vars/all/vars.yml)
- [site.yml](https://github.com/hexlet-basics/hexlet_basics/blob/4082255a835972f9fa4c90b062b1696d89833df8/ansible/site.yml)

=== 2Learn
- how do nginx and network work?
- application composition from scratch. Create ruby-project from scratch, add db, AR, routing, rake, tests, etc. e.g. add all listed above to sinatra.

=== 2Read
- canary release

=== Notes
- В development-среде не надо ставить зависимостей.