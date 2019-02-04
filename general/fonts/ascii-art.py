import os
import sys

def parse_characters(filename):
    if not os.path.exists("ascii-art-letters.txt"):
        print("Please download the file containing the characters' designs")
        raise FileNotFoundError

    characters = dict()
    current_char = None

    with open(filename) as f:
        for line in f:
            if line[:2] == "--":
                current_char = line[3:].strip()

                characters[current_char] = list()
            else:
                characters[current_char].append(line[:-1])


    for char in characters:
        characters[char] = characters[char][1:-1]
        lines = characters[char]

        length = max([len(line) for line in lines])

        for i, line in enumerate(lines):
            lines[i] += " " * (length - len(line))
        
    return characters


if __name__ == "__main__":
    characters = parse_characters("ascii-art-letters.txt")

    conv_text = []
    for arg in sys.argv[1:]:
        chars = [characters[char] for char in arg]
        num_lines = max([len(lines) for lines in chars])

        for i, lines in enumerate(chars):
            chars[i] = [" " * len(lines[0])] * (num_lines - len(lines)) + lines
        
        lines = [""] * num_lines
        for i in range(num_lines):
            for j in range(len(chars)):
                lines[i] += chars[j][i] + " "

        conv_text.append("\n".join(lines))

    print("\n\n".join(conv_text))
