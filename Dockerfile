FROM rfhk/odoo:18.0
LABEL maintainer="Quartile <info@quartile.co>"

# Switch back to root since 'odoo' is set in the rfhk/odoo image.
USER root

# Install Odoo Python dependencies (Custom)
ADD requirements.txt /opt/custom_requirements.txt
RUN pip install -r /opt/custom_requirements.txt
