import random

def guess_number(secret, guess):
    if guess < secret:
        return "Muito baixo"
    elif guess > secret:
        return "Muito alto"
    else:
        return "Acertou!"

def play():
    secret = random.randint(1, 100)
    while True:
        try:
            guess = int(input("Adivinhe o número de 1 a 100: "))
            result = guess_number(secret, guess)
            print(result)
            if result == "Acertou!":
                break
        except ValueError:
            print("Por favor, digite um número válido.")
