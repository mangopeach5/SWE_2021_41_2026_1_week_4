FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
  number = []\n\
\n\
  while n != 1:\n\
    if n in number:\n\
      return False\n\
\n\
    number.append(n)\n\
\n\
    s = 0\n\
    for i in str(n):\n\
      s = s + int(i) * int(i)\n\
\n\
    n = s\n\
\n\
  return True\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]