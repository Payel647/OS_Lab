#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
    pid_t pid;

    // create a child process
    pid = fork();

    if (pid < 0) {
        // error in creating process
        perror("fork failed");
        return 1;
    }
    else if (pid == 0) {
        // child process
        printf("I am the child process.\n");
        printf("Child PID: %d\n", getpid());
        printf("Parent PID (PPID): %d\n", getppid());
    }
    else {
        // parent process
        printf("I am the parent process.\n");
        printf("Parent PID: %d\n", getpid());
        printf("Child PID: %d\n", pid);
    }

    return 0;
}
