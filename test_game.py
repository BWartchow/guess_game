from game import guess_number

def test_guess_low():
    assert guess_number(50, 25) == "Muito baixo"

def test_guess_high():
    assert guess_number(50, 75) == "Muito alto"

def test_guess_correct():
    assert guess_number(50, 50) == "Acertou!"
