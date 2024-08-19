from fastapi import APIRouter
from fastapi.responses import JSONResponse, HTMLResponse, RedirectResponse

router = APIRouter()

@router.get('/')
async def client():  
    with open('svelte/public/index.html') as f:
        return HTMLResponse(f.read())
    # return RedirectResponse(url="/index.html")
