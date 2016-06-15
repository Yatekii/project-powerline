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

// Compares strings s1 and s2 up until n characters
// returns 1 if equal, returns 0 otherwise
int strncmp(const char* s1, const char* s2, int n){
  int i = 0;
  char c = 0;
  while((i < n) && (*s1 == *s2)){
    s1++;
    s2++;
    i++;
  }
  return i == n;
}
