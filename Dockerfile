# Use an official Python runtime as a base image
FROM ubuntu:16.04

# Install any needed packages
RUN apt-get update

# Make port 80 available to the world outside this container
EXPOSE 80