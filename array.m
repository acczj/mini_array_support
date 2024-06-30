int a[10];
main()
{
    char a1[10];
    int k;
    int *b;
    int c;
    a[1]=2;
    k=a[1];
    a[a[1]]=2;
    print("a[2]=",a[2],"\n");

    b=&k;
    a[*b]=4;
    print("a[2]=",a[2],"\n");

    c=(a[a[1]]+1-2)*4/2;
    print("c=",c,"\n");

    a1[5]='a';
    a1[c]='f';
    print("a1[c]-a1[5]=",a1[c]-a1[5],"\n");

}