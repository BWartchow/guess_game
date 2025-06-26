provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "guess_game_server" {
  ami           = "ami-0e83be366243f524a"
  instance_type = "t2.micro"

  key_name = "guess_game_key"

  vpc_security_group_ids = [aws_security_group.guess_game_sg.id]

  tags = {
    Name = "GuessGameInstance"
  }
}
