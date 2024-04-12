Sure, let's provide more detailed code examples with additional explanations and more Bash and C++ code snippets:

**1. Process States:**

```cpp
#include <iostream>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == -1) {
        std::cerr << "Fork failed\n";
        return 1;
    } else if (pid == 0) {
        // Child process
        std::cout << "Child process: " << getpid() << "\n";
        // Simulate some work
        for (int i = 0; i < 5; ++i) {
            std::cout << "Working...\n";
            sleep(1);
        }
    } else {
        // Parent process
        std::cout << "Parent process: " << getpid() << "\n";
        // Wait for child process to finish
        wait(NULL);
        std::cout << "Child process finished.\n";
    }

    return 0;
}
```

**Bash Equivalent to Check Process State:**
```bash
# List all processes with their states
ps -eo pid,ppid,state,command
```

**2. Process Priority and Hierarchy:**

```cpp
#include <iostream>
#include <sys/resource.h>
#include <unistd.h>

int main() {
    int priority = getpriority(PRIO_PROCESS, getpid());
    std::cout << "Original process priority: " << priority << "\n";

    // Setting a new priority
    nice(10); // Increase priority
    priority = getpriority(PRIO_PROCESS, getpid());
    std::cout << "New process priority: " << priority << "\n";

    return 0;
}
```

**Bash Equivalent to Change Process Priority:**
```bash
# Change priority of a process (requires sudo)
sudo renice 10 -p <pid>
```

**3. Programming for the Linux Kernel (Kernel Module):**

```cpp
#include <linux/module.h>
#include <linux/kernel.h>

int init_module() {
    printk(KERN_INFO "Hello, kernel!\n");
    return 0;
}

void cleanup_module() {
    printk(KERN_INFO "Goodbye, kernel!\n");
}
```

**Bash Equivalent to Load and Unload Kernel Module:**
```bash
# Load kernel module (requires sudo)
sudo insmod module_name.ko

# Unload kernel module (requires sudo)
sudo rmmod module_name
```

These examples provide a more detailed understanding of working with processes, priorities, and kernel programming in C++ on Linux systems. Additionally, Bash commands are provided for performing similar operations at the command line for system-level interactions.
