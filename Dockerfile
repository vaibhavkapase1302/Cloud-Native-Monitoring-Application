# FROM python:3.9-buster

# WORKDIR /app

# COPY requirements.txt .

# RUN pip3 install --no-cache-dir -r requirements.txt

# COPY . .

# ENV FLASK_RUN_HOST=0.0.0.0

# EXPOSE 5000

# CMD ["flask", "run"]

# FROM python:3.9-buster AS build
# WORKDIR /app
# COPY . .  
# RUN pip3 install --no-cache-dir -r requirements.txt

# # Stage 2 
# FROM build AS final
# WORKDIR /app/
# COPY --from=build /app/ .
# CMD ["flask", "run"]



# Stage 1: Base
FROM python:3.9-slim-buster AS base
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Build
FROM base AS build
COPY . .

# Stage 3: Final
FROM python:3.9-slim-buster AS final
WORKDIR /app
COPY --from=build /app /app
CMD ["flask", "run"]
