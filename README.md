# Домашнее задание к занятию "`GIT №3`" - `Вахрамеев А.В.`


`Промежуточный итог`
![Снимок экрана от 2023-04-05 01-13-48](https://user-images.githubusercontent.com/75438030/229903010-52163204-c31b-4916-bfb0-507c75975cd4.png)

`Merge`
![Снимок экрана от 2023-04-05 01-15-28](https://user-images.githubusercontent.com/75438030/229903024-573227e0-47d5-4237-8e9c-5b1a04c8ec6d.png)


### CLI LOG

```
root@PC-DB:/home/alex/test# git clone https://github.com/alexnet123/git_3.git
Клонирование в «git_3»…
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 6 (delta 0), reused 0 (delta 0), pack-reused 0
Распаковка объектов: 100% (6/6), готово.
```

```
root@PC-DB:/home/alex/test# cd git_3/
root@PC-DB:/home/alex/test/git_3# vim merge.sh
root@PC-DB:/home/alex/test/git_3# vim rebase.sh
root@PC-DB:/home/alex/test/git_3# git-merge
bash: git-merge: команда не найдена
root@PC-DB:/home/alex/test/git_3# git branch
* main
root@PC-DB:/home/alex/test/git_3# git branch git-merge
root@PC-DB:/home/alex/test/git_3# git branch
  git-merge
* main
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке main
Ваша ветка обновлена в соответствии с «origin/main».

Неотслеживаемые файлы:
  (используйте «git add <файл>…», чтобы добавить в то, что будет включено в коммит)

	merge.sh
	rebase.sh

ничего не добавлено в коммит, но есть неотслеживаемые файлы (используйте «git add», чтобы отслеживать их)
```

```
root@PC-DB:/home/alex/test/git_3# git add *
root@PC-DB:/home/alex/test/git_3# git status
На ветке main
Ваша ветка обновлена в соответствии с «origin/main».

Изменения, которые будут включены в коммит:
  (используйте «git reset HEAD <файл>…», чтобы убрать из индекса)

	новый файл:    merge.sh
	новый файл:    rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git commit -m 'init'
[main 3148b64] init
 2 files changed, 16 insertions(+)
 create mode 100644 merge.sh
 create mode 100644 rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git branch
  git-merge
* main
```

```
root@PC-DB:/home/alex/test/git_3# git branch git-merge
fatal: Ветка с именем «git-merge» уже существует.
root@PC-DB:/home/alex/test/git_3# git checkout git-merge
Переключено на ветку «git-merge»
root@PC-DB:/home/alex/test/git_3# git statsu
git: «statsu» не является командой git. Смотрите «git --help».

Самые похожие команды:
	status
```

```
root@PC-DB:/home/alex/test/git_3# ls
README.md
root@PC-DB:/home/alex/test/git_3# git checkout main
Переключено на ветку «main»
Ваша ветка опережает «origin/main» на 1 коммит.
  (используйте «git push», чтобы опубликовать ваши локальные коммиты)
```

```
root@PC-DB:/home/alex/test/git_3# ls
merge.sh  README.md  rebase.sh
root@PC-DB:/home/alex/test/git_3# git checkout git-merge
Переключено на ветку «git-merge»
root@PC-DB:/home/alex/test/git_3# git checkout main
Переключено на ветку «main»
Ваша ветка опережает «origin/main» на 1 коммит.
  (используйте «git push», чтобы опубликовать ваши локальные коммиты)
root@PC-DB:/home/alex/test/git_3# git branch git-merge -D
Ветка git-merge удалена (была 1756d1c).
```

```
root@PC-DB:/home/alex/test/git_3# git branch git-merge
root@PC-DB:/home/alex/test/git_3# git checkout git-merge
Переключено на ветку «git-merge»
root@PC-DB:/home/alex/test/git_3# git status
На ветке git-merge
нечего коммитить, нет изменений в рабочем каталоге
root@PC-DB:/home/alex/test/git_3# ls
merge.sh  README.md  rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# vim merge.sh
root@PC-DB:/home/alex/test/git_3# git checkout main
M	merge.sh
Переключено на ветку «main»
Ваша ветка опережает «origin/main» на 1 коммит.
  (используйте «git push», чтобы опубликовать ваши локальные коммиты)
```


```
root@PC-DB:/home/alex/test/git_3# ls
merge.sh  README.md  rebase.sh
root@PC-DB:/home/alex/test/git_3# 
root@PC-DB:/home/alex/test/git_3# git branch git-merge -D
Ветка git-merge удалена (была 3148b64).
```

```
root@PC-DB:/home/alex/test/git_3# 
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке main
Ваша ветка опережает «origin/main» на 1 коммит.
  (используйте «git push», чтобы опубликовать ваши локальные коммиты)

Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git checkout -- <файл>…», чтобы отменить изменения
   в рабочем каталоге)

	изменено:      merge.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
```

```
root@PC-DB:/home/alex/test/git_3# git rm merge.sh
error: следующие файлы содержат локальные изменения:
    merge.sh
(используйте опцию «--cached» для оставления файла, или «-f» для принудительного удаления)
```
```
root@PC-DB:/home/alex/test/git_3# 
root@PC-DB:/home/alex/test/git_3# 
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке main
Ваша ветка опережает «origin/main» на 1 коммит.
  (используйте «git push», чтобы опубликовать ваши локальные коммиты)

Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git checkout -- <файл>…», чтобы отменить изменения
   в рабочем каталоге)

	изменено:      merge.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
root@PC-DB:/home/alex/test/git_3# git checkout merge.sh
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке main
Ваша ветка опережает «origin/main» на 1 коммит.
  (используйте «git push», чтобы опубликовать ваши локальные коммиты)

нечего коммитить, нет изменений в рабочем каталоге
```

```
root@PC-DB:/home/alex/test/git_3# ls
merge.sh  README.md  rebase.sh
root@PC-DB:/home/alex/test/git_3# cat merge.sh
#!/bin/bash
# display command line options

count=1
for param in "$*"; do
    echo "\$* Parameter #$count = $param"
    count=$(( $count + 1 ))
done
```

```
root@PC-DB:/home/alex/test/git_3# git commit -m 'prepare for merge and rebase'
На ветке main
Ваша ветка опережает «origin/main» на 1 коммит.
  (используйте «git push», чтобы опубликовать ваши локальные коммиты)

нечего коммитить, нет изменений в рабочем каталоге
```

```
root@PC-DB:/home/alex/test/git_3# vim merge.sh
root@PC-DB:/home/alex/test/git_3# 
root@PC-DB:/home/alex/test/git_3# git add 8
fatal: спецификатор пути «8» не соответствует ни одному файлу
root@PC-DB:/home/alex/test/git_3# git add *
```

```
root@PC-DB:/home/alex/test/git_3# git commit -m 'prepare for merge and rebase'
[main 871c161] prepare for merge and rebase
 1 file changed, 1 insertion(+)
```

```
root@PC-DB:/home/alex/test/git_3# git branch 
* main
```

```
root@PC-DB:/home/alex/test/git_3# git push
Username for 'https://github.com': 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
Password for 'https://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@github.com': 
Перечисление объектов: 7, готово.
Подсчет объектов: 100% (7/7), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (6/6), готово.
Запись объектов: 100% (6/6), 686 bytes | 686.00 KiB/s, готово.
Всего 6 (изменения 1), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (1/1), done.
To https://github.com/alexnet123/git_3.git
   1756d1c..871c161  main -> main
```

```
root@PC-DB:/home/alex/test/git_3# git branch git-merge
root@PC-DB:/home/alex/test/git_3# git checkout git-merge
Переключено на ветку «git-merge»
```

```
root@PC-DB:/home/alex/test/git_3# ls
merge.sh  README.md  rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# vim merge.sh
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке git-merge
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git checkout -- <файл>…», чтобы отменить изменения
   в рабочем каталоге)

	изменено:      merge.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
```

```
root@PC-DB:/home/alex/test/git_3# git add *
root@PC-DB:/home/alex/test/git_3# git commit -m 'merge: @ instead *'
[git-merge 919e808] merge: @ instead *
 1 file changed, 2 insertions(+), 3 deletions(-)
```

```
root@PC-DB:/home/alex/test/git_3# git push
fatal: Текущая ветка git-merge не имеет вышестоящей ветки.
Чтобы отправить текущую ветку и установить внешнюю ветку как вышестоящую для этой ветки, используйте

    git push --set-upstream origin git-merge
```


```
root@PC-DB:/home/alex/test/git_3# git push --set-upstream origin git-merge
Username for 'https://github.com': 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
Password for 'https://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@github.com': 
Перечисление объектов: 5, готово.
Подсчет объектов: 100% (5/5), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 361 bytes | 361.00 KiB/s, готово.
Всего 3 (изменения 1), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote: 
remote: Create a pull request for 'git-merge' on GitHub by visiting:
remote:      https://github.com/alexnet123/git_3/pull/new/git-merge
remote: 
To https://github.com/alexnet123/git_3.git
 * [new branch]      git-merge -> git-merge
Ветка «git-merge» отслеживает внешнюю ветку «git-merge» из «origin».
```

```
root@PC-DB:/home/alex/test/git_3# vim merge.sh
root@PC-DB:/home/alex/test/git_3# git add *
root@PC-DB:/home/alex/test/git_3# git commit -m 'merge: use shift'
[git-merge 6aa52a0] merge: use shift
 1 file changed, 3 insertions(+), 2 deletions(-)
```

```
root@PC-DB:/home/alex/test/git_3# git push
Username for 'https://github.com': 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
Password for 'https://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@github.com': 
Перечисление объектов: 5, готово.
Подсчет объектов: 100% (5/5), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 428 bytes | 428.00 KiB/s, готово.
Всего 3 (изменения 0), повторно использовано 0 (изменения 0)
To https://github.com/alexnet123/git_3.git
   919e808..6aa52a0  git-merge -> git-merge
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке git-merge
Ваша ветка обновлена в соответствии с «origin/git-merge».

нечего коммитить, нет изменений в рабочем каталоге
```

```
root@PC-DB:/home/alex/test/git_3# git checkout main
Переключено на ветку «main»
Ваша ветка обновлена в соответствии с «origin/main».
```

```
root@PC-DB:/home/alex/test/git_3# vim rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке main
Ваша ветка обновлена в соответствии с «origin/main».

Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git checkout -- <файл>…», чтобы отменить изменения
   в рабочем каталоге)

	изменено:      rebase.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
```

```
root@PC-DB:/home/alex/test/git_3# git add *
```

```
root@PC-DB:/home/alex/test/git_3# git commit -m 'stage 3'
[main a9ec992] stage 3
 1 file changed, 4 insertions(+), 2 deletions(-)
```

```
root@PC-DB:/home/alex/test/git_3# git push
Username for 'https://github.com': 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
Password for 'https://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@github.com': 
Перечисление объектов: 5, готово.
Подсчет объектов: 100% (5/5), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 300 bytes | 300.00 KiB/s, готово.
Всего 3 (изменения 2), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/alexnet123/git_3.git
   871c161..a9ec992  main -> main
```

```
root@PC-DB:/home/alex/test/git_3# git log
commit a9ec992f131cf3220ad91dbcc96a2643f36feac1 (HEAD -> main, origin/main, origin/HEAD)
Author: alexnet123 <wax_boy@mail.ru>
Date:   Wed Apr 5 00:43:23 2023 +0300

    stage 3

commit 871c1614533fa6f0948da02619c287551d8e5183
Author: alexnet123 <wax_boy@mail.ru>
Date:   Wed Apr 5 00:36:41 2023 +0300

    prepare for merge and rebase

commit 3148b6417c1a20a2a41a23f794be3035b70773a7
Author: alexnet123 <wax_boy@mail.ru>
Date:   Wed Apr 5 00:31:33 2023 +0300

    init

commit 1756d1c4ae474918225005fa186b64304b6b4e2f
Author: alexnet123 <75438030+alexnet123@users.noreply.github.com>
Date:   Tue Apr 4 21:26:56 2023 +0300

    Update README.md

commit 3a8efd44a096aebd6d5b169c70abeec065c7967f
Author: alexnet123 <75438030+alexnet123@users.noreply.github.com>
Date:   Tue Apr 4 21:26:25 2023 +0300

    Initial commit
```

```
root@PC-DB:/home/alex/test/git_3# git log --oneline
a9ec992 (HEAD -> main, origin/main, origin/HEAD) stage 3
871c161 prepare for merge and rebase
3148b64 init
1756d1c Update README.md
3a8efd4 Initial commit
```

```
root@PC-DB:/home/alex/test/git_3# git checkout 871c1614533fa6f0948da02619c287551d8e5183
Примечание: переход на «871c1614533fa6f0948da02619c287551d8e5183».

Вы сейчас в состоянии «отделённого HEAD». Вы можете осмотреться, сделать
экспериментальные изменения и закоммитить их, также вы можете отменить
изменения любых коммитов в этом состоянии не затрагивая любые ветки и
не переходя на них.

Если вы хотите создать новую ветку и сохранить свои коммиты, то вы
можете сделать это (сейчас или позже) вызвав команду checkout снова,
но с параметром -b. Например:

  git checkout -b <имя-новой-ветки>

HEAD сейчас на 871c161 prepare for merge and rebase
```

```
root@PC-DB:/home/alex/test/git_3# ды
bash: ды: команда не найдена
```

```
root@PC-DB:/home/alex/test/git_3# ls
merge.sh  README.md  rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git branch
* (HEAD отделён на 871c161)
  git-merge
  main
```

```
root@PC-DB:/home/alex/test/git_3# git branch git-rebase
root@PC-DB:/home/alex/test/git_3# git branch
* (HEAD отделён на 871c161)
  git-merge
  git-rebase
  main
```

```
root@PC-DB:/home/alex/test/git_3# vim rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git status
HEAD отделён на 871c161
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git checkout -- <файл>…», чтобы отменить изменения
   в рабочем каталоге)

	изменено:      rebase.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
```

```
root@PC-DB:/home/alex/test/git_3# git checkout rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git status
HEAD отделён на 871c161
нечего коммитить, нет изменений в рабочем каталоге
```

```
root@PC-DB:/home/alex/test/git_3# git branch
* (HEAD отделён на 871c161)
  git-merge
  git-rebase
  main
```

```
root@PC-DB:/home/alex/test/git_3# git checkout git-rebase
Переключено на ветку «git-rebase»
```

```
root@PC-DB:/home/alex/test/git_3# vim rebase.sh
root@PC-DB:/home/alex/test/git_3# git add *
root@PC-DB:/home/alex/test/git_3# git commit -m 'git-rebase 1'
[git-rebase d938276] git-rebase 1
 1 file changed, 4 insertions(+), 2 deletions(-)
```

```
root@PC-DB:/home/alex/test/git_3# vim rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке git-rebase
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git checkout -- <файл>…», чтобы отменить изменения
   в рабочем каталоге)

	изменено:      rebase.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
```

```
root@PC-DB:/home/alex/test/git_3# git add *
```

```
root@PC-DB:/home/alex/test/git_3# git commit -m 'git-rebase 2'
[git-rebase 1428c91] git-rebase 2
 1 file changed, 1 insertion(+), 1 deletion(-)
```

```
root@PC-DB:/home/alex/test/git_3# git push
fatal: Текущая ветка git-rebase не имеет вышестоящей ветки.
Чтобы отправить текущую ветку и установить внешнюю ветку как вышестоящую для этой ветки, используйте

    git push --set-upstream origin git-rebase
```

```
root@PC-DB:/home/alex/test/git_3# git push --set-upstream origin git-rebase
Username for 'https://github.com': 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
Password for 'https://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@github.com': 
Перечисление объектов: 8, готово.
Подсчет объектов: 100% (8/8), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (6/6), готово.
Запись объектов: 100% (6/6), 596 bytes | 596.00 KiB/s, готово.
Всего 6 (изменения 3), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (3/3), completed with 1 local object.
remote: 
remote: Create a pull request for 'git-rebase' on GitHub by visiting:
remote:      https://github.com/alexnet123/git_3/pull/new/git-rebase
remote: 
To https://github.com/alexnet123/git_3.git
 * [new branch]      git-rebase -> git-rebase
Ветка «git-rebase» отслеживает внешнюю ветку «git-rebase» из «origin».
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке git-rebase
Ваша ветка обновлена в соответствии с «origin/git-rebase».

нечего коммитить, нет изменений в рабочем каталоге
```

```
root@PC-DB:/home/alex/test/git_3# git checkout main
Переключено на ветку «main»
Ваша ветка обновлена в соответствии с «origin/main».
```

```
root@PC-DB:/home/alex/test/git_3# git merge git-merge
Merge made by the 'recursive' strategy.
 merge.sh | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке main
Ваша ветка опережает «origin/main» на 3 коммита.
  (используйте «git push», чтобы опубликовать ваши локальные коммиты)

нечего коммитить, нет изменений в рабочем каталоге
```

```
root@PC-DB:/home/alex/test/git_3# git push
Username for 'https://github.com': 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
Password for 'https://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@github.com': 
Перечисление объектов: 4, готово.
Подсчет объектов: 100% (4/4), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (2/2), готово.
Запись объектов: 100% (2/2), 285 bytes | 285.00 KiB/s, готово.
Всего 2 (изменения 1), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/alexnet123/git_3.git
   a9ec992..08520e3  main -> main
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке main
Ваша ветка обновлена в соответствии с «origin/main».

нечего коммитить, нет изменений в рабочем каталоге
```

```
root@PC-DB:/home/alex/test/git_3# git checkout git-rebase
Переключено на ветку «git-rebase»
Ваша ветка обновлена в соответствии с «origin/git-rebase».
```

```
root@PC-DB:/home/alex/test/git_3# git rebase -i main
error: неправильная строка 2: fixup pick 1428c91 git-rebase 2
Вы можете исправить это с помощью «git rebase --edit-todo», а потом запустив «git rebase --continue».
Или вы можете прервать процесс перемещения, выполнив «git rebase --abort»
```

```
root@PC-DB:/home/alex/test/git_3# git rebase -i main
fatal: It seems that there is already a rebase-merge directory, and
I wonder if you are in the middle of another rebase.  If that is the
case, please try
	git rebase (--continue | --abort | --skip)
If that is not the case, please
	rm -fr ".git/rebase-merge"
and run me again.  I am stopping in case you still have something
valuable there.
```

```
root@PC-DB:/home/alex/test/git_3# git rebase --edit-todo
error: неправильная строка 2: fixup pick 1428c91 git-rebase 2
error: непригодный для использования список дел: «.git/rebase-merge/git-rebase-todo»
```

```
root@PC-DB:/home/alex/test/git_3# git rebase --edit-todo
root@PC-DB:/home/alex/test/git_3# 
root@PC-DB:/home/alex/test/git_3# git rebase --edit-todo
```

```
root@PC-DB:/home/alex/test/git_3# git rebase --continue
Автослияние rebase.sh
КОНФЛИКТ (содержимое): Конфликт слияния в rebase.sh
error: не удалось применить коммит d938276… git-rebase 1
Resolve all conflicts manually, mark them as resolved with
"git add/rm <conflicted_files>", then run "git rebase --continue".
You can instead skip this commit: run "git rebase --skip".
To abort and get back to the state before "git rebase", run "git rebase --abort".
Could not apply d938276... git-rebase 1
```

```
root@PC-DB:/home/alex/test/git_3# cat rebase.sh
#!/bin/bash
# display command line options

count=1
for param in "$@"; do
<<<<<<< HEAD
    echo "\$@ Parameter #$count = $param"
=======
    echo "Parameter: $param"
>>>>>>> d938276... git-rebase 1
    count=$(( $count + 1 ))
done

echo "====="
```

```
root@PC-DB:/home/alex/test/git_3# vim rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git status
интерактивное перемещение в процессе; над 08520e3
Последняя команда выполнена (1 команда выполнена):
   pick d938276 git-rebase 1
Следующая команда для выполнения (1 команда осталась):
   fixup 1428c91 git-rebase 2
  (используйте «git rebase --edit-todo», чтобы просмотреть и изменить)
Вы сейчас перемещаете ветку «git-rebase» над «08520e3».
  (разрешите конфликты, затем запустите «git rebase --continue»)
  (используйте «git rebase --skip», чтобы пропустить этот патч)
  (используйте «git rebase --abort», чтобы перейти на оригинальную ветку)

Не слитые пути:
  (используйте «git reset HEAD <файл>…», чтобы убрать из индекса)
  (используйте «git add <файл>…», чтобы пометить разрешение конфликта)

	оба изменены:   rebase.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
```

```
root@PC-DB:/home/alex/test/git_3# git add rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git status
интерактивное перемещение в процессе; над 08520e3
Последняя команда выполнена (1 команда выполнена):
   pick d938276 git-rebase 1
Следующая команда для выполнения (1 команда осталась):
   fixup 1428c91 git-rebase 2
  (используйте «git rebase --edit-todo», чтобы просмотреть и изменить)
Вы сейчас перемещаете ветку «git-rebase» над «08520e3».
  (все конфликты разрешены: запустите «git rebase --continue»)

Изменения, которые будут включены в коммит:
  (используйте «git reset HEAD <файл>…», чтобы убрать из индекса)

	изменено:      rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git rebase --continue
[отделённый HEAD 6c15efe] git-rebase 1
 1 file changed, 2 insertions(+)
Автослияние rebase.sh
КОНФЛИКТ (содержимое): Конфликт слияния в rebase.sh
error: не удалось применить коммит 1428c91… git-rebase 2
Resolve all conflicts manually, mark them as resolved with
"git add/rm <conflicted_files>", then run "git rebase --continue".
You can instead skip this commit: run "git rebase --skip".
To abort and get back to the state before "git rebase", run "git rebase --abort".
Could not apply 1428c91... git-rebase 2
```

```
root@PC-DB:/home/alex/test/git_3# git status
интерактивное перемещение в процессе; над 08520e3
Последняя команда выполнена (2 команды выполнено):
   pick d938276 git-rebase 1
   fixup 1428c91 git-rebase 2
Команд больше не осталось.
Вы сейчас перемещаете ветку «git-rebase» над «08520e3».
  (разрешите конфликты, затем запустите «git rebase --continue»)
  (используйте «git rebase --skip», чтобы пропустить этот патч)
  (используйте «git rebase --abort», чтобы перейти на оригинальную ветку)

Не слитые пути:
  (используйте «git reset HEAD <файл>…», чтобы убрать из индекса)
  (используйте «git add <файл>…», чтобы пометить разрешение конфликта)

	оба изменены:   rebase.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
```

```
root@PC-DB:/home/alex/test/git_3# vim rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git add rebase.sh
```

```
root@PC-DB:/home/alex/test/git_3# git rebase --continue
[отделённый HEAD 4f9494b] git-rebase 1
 Date: Wed Apr 5 01:05:56 2023 +0300
 1 file changed, 6 insertions(+), 1 deletion(-)
Successfully rebased and updated refs/heads/git-rebase.
```

```
root@PC-DB:/home/alex/test/git_3# git push -u origin git-rebase
Username for 'https://github.com': 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
Password for 'https://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@github.com': 
To https://github.com/alexnet123/git_3.git
 ! [rejected]        git-rebase -> git-rebase (non-fast-forward)
error: не удалось отправить некоторые ссылки в «https://github.com/alexnet123/git_3.git»
подсказка: Обновления были отклонены, так как верхушка вашей текущей ветки
подсказка: позади ее внешней части. Заберите и слейте внешние изменения 
подсказка: (например, с помощью «git pull …») перед повторной попыткой отправки
подсказка: изменений.
подсказка: Для дополнительной информации, смотрите «Note about fast-forwards»
подсказка: в «git push --help».
```

```
root@PC-DB:/home/alex/test/git_3# git status
На ветке git-rebase
Ваша ветка и «origin/git-rebase» разделились
и теперь имеют 5 и 2 разных коммитов в каждой соответственно.
  (используйте «git pull», чтобы слить внешнюю ветку в вашу)

нечего коммитить, нет изменений в рабочем каталоге
```

````
root@PC-DB:/home/alex/test/git_3# git push -u origin git-rebase -f
Username for 'https://github.com': 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
Password for 'https://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@github.com': 
Перечисление объектов: 5, готово.
Подсчет объектов: 100% (5/5), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 420 bytes | 420.00 KiB/s, готово.
Всего 3 (изменения 1), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/alexnet123/git_3.git
 + 1428c91...4f9494b git-rebase -> git-rebase (forced update)
Ветка «git-rebase» отслеживает внешнюю ветку «git-rebase» из «origin».
```

```
root@PC-DB:/home/alex/test/git_3# git checkout main
Переключено на ветку «main»
Ваша ветка обновлена в соответствии с «origin/main».
```

```
root@PC-DB:/home/alex/test/git_3# git merge git-rebase
Обновление 08520e3..4f9494b
Fast-forward
 rebase.sh | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)
```
