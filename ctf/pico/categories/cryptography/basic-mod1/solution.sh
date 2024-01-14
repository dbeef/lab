#!python3

numbers = open('./message.txt').readlines()[0]
numbers = numbers.replace('\n', '').split(' ')

out = ''
alphabet = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
           'K',
           'L',
           'M',
           'N',
           'O',
           'P',
           'Q',
           'R',
           'S',
           'T',
           'U',
           'V',
           'W',
           'X',
           'Y',
           'Z',
           '0',
           '1',
           '2',
           '3',
           '4',
           '5',
           '6',
           '7',
           '8',
           '9',
           '_'
]

for i in numbers:
    n = int(i)
    c = n % 37
    out += alphabet[c]
print(out)

