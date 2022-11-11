FROM redhat/ubi8-minimal:8.6

COPY getip.sh .

CMD ["sh","getip.sh"]
