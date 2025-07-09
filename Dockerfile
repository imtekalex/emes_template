FROM debian:latest

# this is a full texlive install resulting in a very large image size
RUN apt update && apt install -y \
	texlive-full \
	texlive-luatex \
	texlive-fonts-extra \
	fonts-liberation2  # for Arial

# install additional tools here to avoid reinstalling texlive for every mini
# package you might need additionally
RUN apt install -y make 

# Add an unpriviledged user and chmod one directory the tex compiler needs to read
RUN useradd latex && chmod -R 777 /var/lib/texmf
USER latex
WORKDIR /latex

CMD ["make", "all"]
