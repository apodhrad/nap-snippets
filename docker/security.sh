# SELinux context for files used in docker
chcon -R -t container_file_t "${PATH}"
