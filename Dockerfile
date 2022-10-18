FROM jupyter/minimal-notebook:hub-3.0.0

# Replace all favicons with Nectar logo and install our theme extension
COPY favicon.ico /tmp
RUN cp /tmp/favicon.ico /opt/conda/share/jupyterhub/static/favicon.ico && \
    cp /tmp/favicon.ico /opt/conda/lib/python3.10/site-packages/jupyter_server/static/favicon.ico && \
    cp /tmp/favicon.ico /opt/conda/lib/python3.10/site-packages/jupyter_server/static/favicons/favicon.ico && \
    cp /tmp/favicon.ico /opt/conda/lib/python3.10/site-packages/nbclassic/static/base/images/favicon.ico && \
    cp /tmp/favicon.ico /opt/conda/lib/python3.10/site-packages/nbclassic/static/favicon.ico && \
    cp /tmp/favicon.ico /opt/conda/lib/python3.10/site-packages/notebook/static/base/images/favicon.ico && \
    cp /tmp/favicon.ico /opt/conda/lib/python3.10/site-packages/notebook/static/favicon.ico && \
    pip install git+https://github.com/NeCTAR-RC/nectar-jupyterlab-theme.git
