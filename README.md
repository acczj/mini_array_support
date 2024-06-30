**1.词法分析器：** mini.l -> lex.yy.c

**2.语法分析器：** mini.y -> y.tab.h, y.tab.c

**3.三地址码生成：** tac.h, tac.c

**4.汇编代码生成：** obj.h, obj.c

**机器码生成与运行程序：** asm, machine (测试实验结果是否正确)

**测试文件：** *.m

**编译与运行：** lex mini.l

yacc -d mini.y

gcc lex.yy.c y.tab.c tac.c obj.c -o mini

./mini *.m

./asm *.m.s

./machine *.m.s.o
