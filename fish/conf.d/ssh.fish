# initializaion ssh github at shell startup time

# Start ssh-agent if not already running
if not set -q SSH_AUTH_SOCK
    eval (ssh-agent -c) >/dev/null
end

# Add GitHub SSH key if it isn't already loaded
if not ssh-add -l >/dev/null 2>&1
    ssh-add ~/.ssh/id_ed25519 >/dev/null 2>&1
end
