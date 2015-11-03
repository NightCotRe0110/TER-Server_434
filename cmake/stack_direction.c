
int f(int *a)
{
  int b;
  return(&b > a)?1:0;
}

volatile int (*ptr_f)(int *) = f;
int main()
{
  int a;
  return ptr_f(&a);
}