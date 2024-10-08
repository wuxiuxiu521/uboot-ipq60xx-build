��    g      T  �   �      �  Z   �  �  	  }  �  �   k  m     r   �  [   �  `   S  N   �  p    '  t    �     �     �  %   �  *        3     G  L   e     �     �  $   �     �          '  -   C     q     �  ,   �  !   �  (   �     !     =     Y      j     �     �     �     �       -   "      P  %   q  #   �  0   �  H   �     5     E     X     m     �  (   �  '   �  +   �  .     B   A  9   �  3   �     �  #        0     F     f     �     �     �  '   �  &   �          5     J     ]  0   q  1   �     �  #   �       %   -  #   S  <   w  &   �  O   �  �   +  3      X   J      �   @   �      �      !  =   7!     u!  *   �!  d   �!     $"  '   @"     h"     �"     �"      �"     �"  .   �"  /   #  �  O#  �    %  �  �%  �  �+  5  k.  �   �/  �   J0  �   �0  �   �1  {   2  P  �2     �6  �  �8     �:  &   �:  A   ;  b   U;  "   �;  K   �;  }   '<     �<  2   �<  F   �<  C   /=  .   s=  P   �=  ^   �=  0   R>  <   �>  E   �>  T   ?  C   [?  2   �?  /   �?  "   @  %   %@  '   K@  5   s@  4   �@  ,   �@  -   A  n   9A  ?   �A  X   �A  9   AB  V   {B  �   �B  4   �C  2   �C  ,   �C  &   %D     LD  6   jD  4   �D  D   �D  M   E  �   iE  O   �E  M   FF  )   �F  k   �F     *G     IG  #   hG      �G  )   �G  !   �G  9   �G  E   3H  ,   yH     �H     �H      �H  N   I  L   PI  *   �I  B   �I  1   J  6   =J  7   tJ  �   �J  -   /K  f   ]K  �  �K  ]   �M  �   N  &   �N  T   �N  .   O  -   KO  P   yO  4   �O  G   �O  t   GP  +   �P  >   �P  /   'Q  )   WQ     �Q  0   �Q  #   �Q  W   �Q  U   NR        a   B   )   "   b                          Y   ;   /   c       >       *   f       1   4   ,         .               7             ^   U   K   +       J   -                   C   &   9      T      	   <   e   \   [       Q           2       _   Z   5       G   E       =   H          S         3           ?   R      N   I      `         $   ]   g          X                                    L   %      (   :      P   
   D   8       d   @          V   M       W      '       !   #   F   6   A      O   0        
Edit the specified file(s) in \$EDITOR (%s) after adding it (them) to
the topmost patch.
 
Generate a dot(1) directed graph showing the dependencies between
applied patches. A patch depends on another patch if both touch the same
file or, with the --lines option, if their modifications overlap. Unless
otherwise specified, the graph includes all patches that the topmost
patch depends on.
When a patch name is specified, instead of the topmost patch, create a
graph for the specified patch. The graph will include all other patches
that this patch depends on, as well as all patches that depend on this
patch.

--all	Generate a graph including all applied patches and their
	dependencies. (Unapplied patches are not included.)

--reduce
	Eliminate transitive edges from the graph.

--lines[=num]
	Compute dependencies by looking at the lines the patches modify.
	Unless a different num is specified, two lines of context are
	included.

--edge-labels=files
	Label graph edges with the file names that the adjacent patches
	modify.

-T ps	Directly produce a PostScript output file.
 
Grep through the source files, recursively, skipping patches and quilt
meta-information. If no filename argument is given, the whole source
tree is searched. Please see the grep(1) manual page for options.

-h	Print this help. The grep -h option can be passed after a
	double-dash (--). Search expressions that start with a dash
	can be passed after a second double-dash (-- --).
 
Please remove all patches using \`quilt pop -a' from the quilt version used to create this working tree, or remove the %s directory and apply the patches from scratch.\n 
Print a list of applied patches, or all patches up to and including the
specified patch in the file series.
 
Print a list of patches that are not applied, or all patches that follow
the specified patch in the series file.
 
Print the name of the next patch after the specified or topmost patch in
the series file.
 
Print the name of the previous patch before the specified or topmost
patch in the series file.
 
Print the name of the topmost patch on the current stack of applied
patches.
 
Remove patch(es) from the stack of applied patches.  Without options,
the topmost patch is removed.  When a number is specified, remove the
specified number of patches.  When a patch name is specified, remove
patches until the specified patch end up on top of the stack.  Patch
names may include the patches/ prefix, which means that filename
completion can be used.

-a	Remove all applied patches.

-f	Force remove. The state before the patch(es) were applied will
	be restored from backup files.

-R	Always verify if the patch removes cleanly; don't rely on
	timestamp checks.

-q	Quiet operation.

-v	Verbose operation.
 
Take a snapshot of the current working state.  After taking the snapshot,
the tree can be modified in the usual ways, including pushing and
popping patches.  A diff against the tree at the moment of the
snapshot can be generated with \`quilt diff --snapshot'.

-d	Only remove current snapshot.
 
Upgrade the meta-data in a working tree from an old version of quilt to the
current version. This command is only needed when the quilt meta-data format
has changed, and the working tree still contains old-format meta-data. In that
case, quilt will request to run \`quilt upgrade'.
        quilt --version %s: I'm confused.
 Appended text to header of patch %s\n Applied patch %s (forced; needs refresh)\n Applying patch %s\n Cannot add symbolic link %s\n Cannot use --strip-trailing-whitespace on a patch that has shadowed files.\n Commands are: Conversion failed\n Converting meta-data to version %s\n Diff failed, aborting\n Directory %s exists\n Failed to back up file %s\n Failed to copy files to temporary directory\n Failed to create patch %s\n Failed to import patch %s\n Failed to insert patch %s into file series\n Failed to patch temporary files\n Failed to remove file %s from patch %s\n Failed to remove patch %s\n File %s added to patch %s\n File %s exists\n File %s is already in patch %s\n File %s is not being modified\n File %s is not in patch %s\n File %s may be corrupted\n File %s modified by patch %s\n File %s removed from patch %s\n File series fully applied, ends at patch %s\n Fork of patch %s created as %s\n Fork of patch %s to patch %s failed\n Importing patch %s (stored as %s)\n Interrupted by user; patch %s was not applied.\n More recent patches modify files in patch %s. Enforce refresh with -f.\n No next patch\n No patch removed\n No patches applied\n Nothing in patch %s\n Now at patch %s\n Patch %s appears to be empty, removing\n Patch %s appears to be empty; applied\n Patch %s does not apply (enforce with -f)\n Patch %s does not exist; applied empty patch\n Patch %s does not remove cleanly (refresh it or enforce with -f)\n Patch %s exists already, please choose a different name\n Patch %s exists already, please choose a new name\n Patch %s exists already\n Patch %s exists. Replace with -f.\n Patch %s is applied\n Patch %s is currently applied\n Patch %s is not applied\n Patch %s is not in series\n Patch %s is now on top\n Patch %s is unchanged\n Patch %s needs to be refreshed first.\n Patch %s not applied before patch %s\n Patch %s renamed to %s\n Refreshed patch %s\n Removed patch %s\n Removing patch %s\n Removing trailing whitespace from line %s of %s
 Removing trailing whitespace from lines %s of %s
 Renaming %s to %s: %s
 Renaming of patch %s to %s failed\n Replaced header of patch %s\n Replacing patch %s with new version\n SYNOPSIS: %s [-p num] [-n] [patch]
 The %%prep section of %s failed; results may be incomplete\n The -v option will show rpm's output\n The quilt meta-data in %s are already in the version %s format; nothing to do\n The quilt meta-data in this tree has version %s, but this version of quilt can only handle meta-data formats up to and including version %s. Please pop all the patches using the version of quilt used to push them before downgrading.\n The topmost patch %s needs to be refreshed first.\n The working tree was created by an older version of quilt. Please run 'quilt upgrade'.\n Unpacking archive %s\n Usage: quilt [--trace[=verbose]] [--quiltrc=XX] command [-h] ... Usage: quilt applied [patch]\n Usage: quilt edit file ...\n Usage: quilt files [-v] [-a] [-l] [--combine patch] [patch]\n Usage: quilt fork [new_name]\n Usage: quilt grep [-h|options] {pattern}\n Usage: quilt header [-a|-r|-e] [--backup] [--strip-diffstat] [--strip-trailing-whitespace] [patch]\n Usage: quilt next [patch]\n Usage: quilt pop [-afRqv] [num|patch]\n Usage: quilt previous [patch]\n Usage: quilt snapshot [-d]\n Usage: quilt top\n Usage: quilt unapplied [patch]\n Usage: quilt upgrade\n Warning: trailing whitespace in line %s of %s
 Warning: trailing whitespace in lines %s of %s
 Project-Id-Version: quilt
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2011-09-20 08:04+0000
PO-Revision-Date: 2011-09-20 07:55+0000
Last-Translator: Sergey Basalaev <SBasalaev@gmail.com>
Language-Team: Russian <ru@li.org>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2011-09-20 08:04+0000
X-Generator: Launchpad (build 13980)
 
Редактировать указанные файлы в редакторе \$EDITOR (%s) после
добавления их к верхнему патчу.
 
Создать ориентированный граф dot(1), показывающий зависимости между
применёнными патчами. Патч зависит от другого патча, если оба изменяют
один и тот же файл или, с опцией --lines, если их изменения пересекаются.
Если не указано иное, граф включает все патчи, от которых зависит самый
верхний патч.
Когда указано имя патча, создаётся граф зависимостей для него. Граф
включает все патчи, от которых зависит этот патч, а также все патчи,
которые зависят от него.

--all	Создать граф, включающий все применённые патчи и их
	зависимости. (Неприменённые патчи не включаются.)

--reduce
	Удалить транзитивные рёбра из графа.

--lines[=число]
	Вычислять зависимости по строкам, которые патчи изменяют.
	Если не указано другое число, включает две строки контекста.

--edge-labels=files
	Помечать рёбра именами файлов, которые смежные патчи изменяют.

-T ps	Сразу создать файл PostScript.
 
Произвести поиск с помощью grep(1) по файлам исходного кода рекурсивно,
пропуская патчи и метаинформацию quilt. Если имя файла не указано,
поиск выполняется по всему дереву. Опции смотрите на странице справки
grep(1).

-h	Вывести эту справку. Опция grep -h может быть передана после
	двойного дефиса (--). Выражения для поиска, начинающиеся с дефиса,
	могут быть переданы после второго двойного дефиса (-- --).
 
Пожалуйста, удалите все патчи, используя \`quilt pop -a' версией quilt, использованной при создании этого рабочего дерева, или удалите директорию %s и примените все патчи с нуля.\n 
Вывести список применённых патчей или всех патчей, до и включая
указанный патч в файле series.
 
Вывести список неприменённых патчей или всех патчей, следующих
за указанным патчем в файле series.
 
Вывести имя патча, следующего за указанным или верхним патчем в
файле series.
 
Вывести имя патча, предшествующего указанному или верхнему
в файле series.
 
Напечатать имя верхнего патча в текущем стеке применённых патчей.
 
Убрать патчи из стека наложенных патчей. Если не указаны опции,
отменяется верхний патч.  Если указано число, отменяется указанное
число патчей.  Когда указано имя патча, патчи убираются до тех пор,
пока указанный патч не окажется на вершине стека. Имена патчей могут
содержать префикс patches/ для использования автодополнения.

-a	Отменить все наложенные патчи.

-f	Принудительно убрать патч. Состояние перед тем, как патчи были
	наложены, может быть восстановлено из резервных копий.

-R	Всегда проверять, чисто ли удаляются патчи; не надеяться
	на проверки отметок времени.

-q	Работать тихо.

-v	Подробный вывод.
 
Сделать снимок текущего состояния рабочего дерева.  После снятия снимка,
дерево можно модифицировать обычными спосоами, включая применение и
отмену патчей. Список изменений diff относительно дерева в момент взятия
снимка может быть создан с помощью \`quilt diff --snapshot'.

-d	Просто удалить текущий снимок.
 
Обновить метаданные в рабочем дереве со старой версии quilt до текущей
версии. Эта команда необходима только, если формат метаданных quilt
изменился, а рабочее дерево по-прежнему содержит метаданные старого
формата. В этом случае quilt попросит запустить \`quilt upgrade'.
        quilt --version %s: я в растерянности.
 Добавлен текст к заголовку патча %s\n Применён патч %s (принудительно; следует сделать refresh)\n Наложение патча %s\n Не удалось добавить символьную ссылку %s\n Нельзя использовать --strip-trailing-whitespace на патче с затенёнными файлами.\n Команды: Преобразование не удалось\n Преобразование метаданных к версии %s\n Не удалось выполнить diff, завершение\n Директория %s существует\n Не удалось создать резервную копию файла %s\n Не удалось скопировать файлы во временный каталог\n Не удалось создать патч %s\n Не удалось импортировать патч %s\n Не удалось вставить патч %s в файл series\n Не удалось применить патч к временным файлам\n Не удалось удалить файл %s из патча %s\n Не удалось отменить патч %s\n Файл %s добавлен к патчу %s\n Файл %s существует\n Файл %s уже в патче %s\n Файл %s не изменяется\n Файл %s отсутствует в патче %s\n Файл %s может быть повреждён\n Файл %s изменён патчем %s\n Файл %s удалён из патча %s\n Серия файлов полностью применена, заканчивается на патче %s\n Ответвление патча %s создано как %s\n Не удалось создать ответвление патча %s в патч %s\n Импорт патча %s (сохранён как %s)\n Прервано пользователем; патч %s не был наложен.\n Более новые патчи изменяют файлы в патче %s. Принудительное обновление можно сделать с помощью опции -f.\n Отсутствует следующий патч\n Не удалено ни одного патча\n Нет применённых патчей\n Ничего нет в патче %s\n Текущий патч: %s\n Похоже, патч %s пуст, удаление\n Похоже, патч %s пуст; наложен\n Патч %s не применяется (принудить с -f)\n Патч %s не существует; наложен пустой патч\n Не удалось чисто удалить патч %s (обновите его или удалите принудительно с -f)\n Патч %s уже существует, выберите другое имя\n Патч %s уже существует, выберите новое имя\n Патч %s уже существует\n Патч %s существует. Принудительно заменить можно опцией -f.\n Патч %s применён\n Патч %s применён\n Патч %s не применён\n Патч %s не в серии\n Патч %s теперь наверху\n Патч %s не изменён\n Сначала нужно обновить патч %s.\n Патч %s не был применён перед патчем %s\n Патч %s переименован в %s\n Патч %s обновлён\n Удалён патч %s\n Удаление патча %s\n Удаление пробела из конца строки %s файла %s
 Удаление пробела из конца строк %s файла %s
 Переименование %s в %s: %s
 Не удалось переименовать патч %s в %s\n Заменён заголовок патча %s\n Замена патча %s новой версией\n СИНТАКСИС: %s [-p число] [-n] [патч]
 Секция %%prep файла %s содержит ошибки; результаты могут быть незавершены\n Опция -v покажет вывод rpm\n Метаданные quilt в %s уже в формате версии %s; нечего делать\n Метаданные quilt в этом дереве имеют версию %s, но эта версия quilt может обрабатывать форматы метаданных толь до версии %s включительно. Пожалуйста, отмените все патчи, используя версию quilt, которая использовалась для их наложения, прежде чем использовать эту версию.\n Сначала необходимо обновить самый верхний патч %s.\n Рабочее дерево было создано более старой версией quilt. Пожалуйста, выполните 'quilt upgrade'.\n Распаковка архива %s\n Синтаксис: quilt [--trace[=verbose]] [--quiltrc=XX] команда [-h] ... Синтаксис: quilt applied [патч]\n Синтаксис: quilt edit файл ...\n Синтаксис: quilt files [-v] [-a] [-l] [--combine патч] [патч]\n Синтаксис: quilt fork [новое_имя]\n Синтаксис: quilt grep [-h|параметры] {шаблон}\n Синтаксис: quilt header [-a|-r|-e] [--backup] [--strip-diffstat] [--strip-trailing-whitespace] [патч]\n Синтаксис: quilt next [патч]\n Синтаксис: quilt pop [-afRqv] [число|патч]\n Синтаксис: quilt previous [патч]\n Синтаксис: quilt snapshot [-d]\n Синтаксис: quilt top\n Синтаксис: quilt unapplied [патч]\n Синтаксис: quilt upgrade\n Предупреждение: пробел в конце строки %s файла %s
 Предупреждение: пробел в конце строк %s файла %s
 