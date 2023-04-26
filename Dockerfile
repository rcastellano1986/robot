FROM python:3

WORKDIR ./estudo

COPY . .

RUN pip install robotframework
RUN pip install robotframework-seleniumlibrary

CMD ["robot", "estudo/form.robot"]