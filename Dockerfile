FROM alpine:latest

# 1. Get the name and save it so it's "sticky"
ARG USERNAME=Guest
ENV USERNAME=${USERNAME}

# 2. Create the user
# (-D means 'don't assign a password')
RUN adduser -D ${USERNAME}

# 3. SWITCH to that user
USER ${USERNAME}

# 4. Set the home directory as the starting point
WORKDIR /home/${USERNAME}

# This will now run as your username, not root!
CMD ["sh", "-c", "echo Hello, $(whoami) Welcome to Docker."]
