FROM alpine:3.18

RUN apk add --no-cache bash

COPY files/* /

LABEL version="0.0.0"

# Add docker configuration
LABEL permissions='{\
  "ExposedPorts": {\
    "8080/tcp": {}\
  },\
  "HostConfig": {\
    "Privileged": true,\
    "PortBindings": {\
      "8080/tcp": [\
        {\
          "HostPort": ""\
        }\
      ]\
    },\
    "NetworkMode": "host"\
  }\
}'
LABEL authors='[\
    {\
        "name": "Raul Victor Trombin",\
        "email": "raulvtrombin@gmail.com"\
    }\
]'
LABEL company='{\
  "about": "Control navigator hardware using webservices",\
  "name": "Blue Robotics",\
  "email": "support@bluerobotics.com"\
}'
LABEL readme="https://raw.githubusercontent.com/raultrombin/blueos-ping-viewer-next/master/README.md"
LABEL type="education"
LABEL tags='[\
  "rov",\
  "robot"\
]'

ENTRYPOINT ["/entrypoint.sh"]