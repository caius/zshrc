# Load .env file safely
source_dotenv() {
  if [[ -f .env && -r .env ]]; then
    source .env
  fi
}

# Load .env when entering a directory
add-zsh-hook chpwd source_dotenv
