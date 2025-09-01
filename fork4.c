#include<stdio.h>
#include<stdlib.h>
#include<sys/wait.h>
#include<unistd.h>

int main(){
    pid_t pid = fork();

    if(pid==0){
        printf("CHILD: my PID: %d, MY parent: PID: %d\n",getpid(),getppid());
        execl("/bin/date","date",NULL);
        perror("exec failed!");
        exit(1);
    }else if (pid>0){
        int status;
        wait(&status);
E
        printf("Prarnt: my PID: %d\n",getpid());
        if(WIFEXITED(status)){
            printf("PARENT: my child exited with code: %d\n",WEXITSTATUS(status));
        }
    }
    else {
        printf("fork failed!");
    }

    return 0;
}