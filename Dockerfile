FROM python:3.8
EXPOSE 8501
RUN pip install --upgrade pip
RUN pip3 install --no-cache-dir Cython
RUN pip install streamlit requests pandas
COPY app.py /var/dashboard/app.py
CMD streamlit run /var/dashboard/app.py