FROM python:3.8
EXPOSE 8501
RUN pip install --upgrade pip
RUN apt-get install cython3
RUN yum install python-devel libusbx-devel systemd-devel
RUN pip install cython
RUN python setup.py install
RUN pip install streamlit requests pandas

COPY app.py /var/dashboard/app.py
CMD streamlit run /var/dashboard/app.py