# 1. Start with a tiny OS
FROM alpine:latest

# 2. Accept the username argument
ARG USERNAME=Guest

# 3. Create the user and set the work directory
RUN adduser -D ${USERNAME}
USER ${USERNAME}
WORKDIR /home/${USERNAME}

# 4. Say hello using the argument
# We use 'sh -c' so the shell can resolve the variable at runtime
CMD ["sh", "-c", "echo Hello, ${USER}! Welcome to Docker."]
