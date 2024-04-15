#include <unistd.h>
#include <string.h>

#deine STDOUT 1 

int main(){

  char msg[] = "Hello, world\n";
  len=sizeof(msg)

    if (write(STDOUT, msg, strlen(msg)) < 0) //printf(“%s %d”, msg, 17)
      exit(1); // printf is failed

  return(0); // success
}
