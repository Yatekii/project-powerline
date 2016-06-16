#ifndef HELPERS_H
#define HELPERS_H

int strlen(char * str){
  int i = 0;
  while(*str != '\0'){
    str++;
    i++;
  }
  return i;
}

void reverse(char *s){
  char *j;
  int c;
  j = s + strlen(s) - 1;
  while(s < j) {
    c = *s;
    *s++ = *j;
    *j-- = c;
  }
}

void itoa(int n, char s[])
{
  int i, sign;

  if ((sign = n) < 0)  /* record sign */
    n = -n;          /* make n positive */
  i = 0;
  do {       /* generate digits in reverse order */
    s[i++] = n % 10 + '0';   /* get next digit */
  } while ((n /= 10) > 0);     /* delete it */
  if (sign < 0)
    s[i++] = '-';
  s[i] = '\0';
  reverse(s);
}

#endif
