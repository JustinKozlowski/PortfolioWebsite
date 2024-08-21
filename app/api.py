from typing import Union
from typing import Annotated

from fastapi import HTTPException, status, Depends
from fastapi import Depends, FastAPI, APIRouter
# from .schemas import (


router = APIRouter()


@router.get("/")
def read_machine_movements():
    return 'hello world again'
