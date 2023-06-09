# Домашнее задание по развертыванию DOCKER контейнера.


## Документация по проекту

Для запуска проекта необходимо, что бы на Вашей операционной системе был установлен DOCKER. В противном случае перейдите по [ССЫЛКЕ](https://docs.docker.com/engine/install/ ).

Проверить версию DOCKERа можно командой:

```bash
docker version
```


Сборка контейнера:

```bash
docker build -t netology/netdoc:v1 .
```

* где netology - имя автора;
* netdoc - название для сборки;
* v1 - тег с указанием сборки;
* Точка на конце указывает, что поиск Dockerfile выполняем в текущей директории.


После завершения процесса сборки должны увидеть что-то наподобие:

```base
Successfully built eae801eaeff2
Successfully tagged netology/netdoc:v1
```

Запуск контейнера:

```bash
docker run -d -p 8080:80 netology/netdoc:v1
```

* в данном примере мы запустим контейнер из образа netology/netdoc:v1 и укажем, что необходимо опубликовать внешний порт 8080, который будет перенаправлять трафик на порт 80 внутри контейнера.
