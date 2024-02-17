FROM python:3.12-bookworm AS builder
WORKDIR /work
COPY requirements.lock requirements.lock
RUN <<install_python_packages
sed -i '/^-e/d' requirements.lock
python -m pip install --no-cache-dir -r requirements.lock
install_python_packages
COPY . .
RUN python -m pip install --no-cache-dir .

FROM python:3.12-slim-bookworm
COPY --from=builder /usr/local/bin/hello /usr/local/bin/hello
COPY --from=builder /usr/local/lib/python3.12/site-packages /usr/local/lib/python3.12/site-packages
