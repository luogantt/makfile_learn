#include <stdio.h>
#include <dlfcn.h>
int main()
{
    //打开（加载）动态库
    void* pdlib = dlopen("./dlib.so", RTLD_LAZY);
    char* (*pname)();
    int (*padd)(int, int);
    if( pdlib != NULL )
    {
        //查找函数地址
        pname = dlsym(pdlib, "name");
        padd = dlsym(pdlib, "add");
        if( (pname != NULL) && (padd != NULL) )
        {
            printf("Name: %s\n", pname());
            printf("Result: %d\n", padd(2, 3));
        }
        //关闭动态库
        dlclose(pdlib);
    }
    else
    {
        printf("Cannot open lib ...\n");
    }
    return 0;
}
