FROM fedora:31

VOLUME /opt/robotframework/results
VOLUME /opt/robotframework/tests

RUN dnf upgrade -y && dnf install -y python37
RUN dnf upgrade -y >/dev/null && echo OK
RUN dnf install -y python37 >/dev/null && echo OK
RUN dnf install -y chromedriver-stable >/dev/null && echo OK
RUN dnf install -y https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm >/dev/null && echo OK
RUN chown root /usr/bin/chromedriver >/dev/null && echo OK
RUN chmod +x /usr/bin/chromedriver >/dev/null && echo OK
RUN chmod 755 /usr/bin/chromedriver >/dev/null && echo OK
RUN pip3 install robotframework robotframework-faker \
robotframework-requests==0.5.0 robotframework-seleniumlibrary \
robotframework-databaselibrary robotframework-sshlibrary==3.2.1 | grep "Successfully installed"
