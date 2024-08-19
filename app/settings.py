from pydantic_settings import BaseSettings

class Settings(BaseSettings):
    database_url: str

settings = Settings(_env_file='envs/.env', _env_file_encoding='utf-8')
