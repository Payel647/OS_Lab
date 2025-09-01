#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
    pid_t pid;

    pid = fork();  // create child

    if (pid < 0) {
        // fork failed
        perror("fork failed");
        return 1;
    }
    else if (pid == 0) {
        // Child process
        printf("Child process (PID: %d)\n", getpid());

        // Replace child with "ls -l"
        execlp("ls", "ls", "-l", NULL);

        // Only runs if exec fails
        perror("exec failed");
    }
    else {
        // Parent process
        printf("Parent process (PID: %d), Child PID: %d\n", getpid(), pid);
    }

    return 0;
}
