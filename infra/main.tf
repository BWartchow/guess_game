provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "guess_game_server" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  tags = {
    Name = "GuessGameInstance"
  }

  vpc_security_group_ids = [aws_security_group.guess_game_sg.id]
}
