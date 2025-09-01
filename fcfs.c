#include<stdio.h>

int main(){
    int n;
    printf("enter no. of processes:");
    scanf("%d", &n);

    int pid[n], bt[n], wt[n], tat[n];

    printf("Enter PID for all processes:");
    for(int i=0; i<n; i++){
        scanf("%d", &pid[i]);
    }

    printf("Enter burst time for all processes:");
    for(int i=0; i<n; i++){
        scanf("%d", &bt[i]);
    }

    wt[0] = 0;

    for(int i=1; i<n; i++){
        wt[i] = bt[i-1] + wt[i-1];
    }

    for(int i=0; i<n; i++){
        tat[i] =  wt[i] + bt[i];  //wt = tat - bt => tat = wt + bt

    }

    printf("Process ID      Burst Time      Waiting Time        Turn Around Time\n");
    float twt = 0.0, ttat = 0.0;
    for(int i=0; i<n; i++){
        printf("%d\t\t", pid[i]);
        printf("%d\t\t", bt[i]);
        printf("%d\t\t", wt[i]);
        printf("%d\t\t", tat[i]);
        printf("\n");

        twt += wt[i];
        ttat += tat[i];
    }

    float awt, atat;
    awt = twt/n;
    atat = ttat/n;

    printf("Avg. waiting time = %f\n", awt);
    printf("Avg. turn around time = %f\n", atat);

    for(int i=0; i<n; i++){
        printf("p%d\t\t", pid[i]);
    }
    printf("\n");

    int ct[n];
    ct[0] = 0 + bt[0];
    printf("%d\t\t",ct[0]);
    for(int i=1; i<n; i++){
        ct[i] = ct[i-1] + bt[i];
        printf("%d\t\t", ct[i]);
    }
    
    return 0;
}

