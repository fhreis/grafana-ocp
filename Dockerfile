# Use the official Grafana base image
FROM grafana/grafana-oss:latest

# Set environment variables
ENV GF_INSTALL_PLUGINS=your-plugin-id,another-plugin-id
ENV GF_SECURITY_ADMIN_USER=admin
ENV GF_SECURITY_ADMIN_PASSWORD=admin

# Copy your custom configuration files
COPY custom.ini /etc/grafana/custom.ini
#ADD package package
#ADD public public
ADD /dashboards /usr/share/grafana/public/dashboards

# Expose the Grafana port
EXPOSE 3000

# Start Grafana
CMD ["grafana-server", "--config=/etc/grafana/custom.ini"]