#ifndef SOCKET_H
#define SOCKET_H

#include <sys/socket.h>
#include <sys/types.h>
#include <signal.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h> // sleep

#include <arpa/inet.h>

#include <fcnctl.h>

#include <sys/time.h>
#include <sys/ioctl.h>
#include <netdb.h>

/**
 * Preprocessor macros for readability
 */

// standard HTTP port is 80
#define SERVER_PORT 80
// the len of the buffer where data goes
#define MAXLINE 4096
// less wordy types
// ?? why not typedef
#define SA struct sockaddr

void err_n_die(const char *fmt, ...);

#endif // SOCKET_H