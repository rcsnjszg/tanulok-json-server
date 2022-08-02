# tanulok-json-server

A https://github.com/typicode/json-server dockerbe csomagolva és személyre szabva.

# Futtatás

```bash
docker run --name tanulok-json-server -v $(pwd):/server -d --rm -p 8888:80 json-server
```

 - `-name`: a megadott nével lehet hivatkozni későbbiekben a konténerre
 - `-v`: az aktuális mappa felcsatolásával az előre elkészített adatokkal dolgozik, továbbá a `public` mappában lévő `index.html`-t jeleníti meg
 - `-d` vagy `--detach`: A háttérben fut, így nem ír ki a terminálba üzeneteket és nem is fogad onnan parancsokat.
 - `--rm`: A futtatás után eltávolítja a konténert és a menetközben létrehozott névtelen volume-okat is.
 - `-p` vagy `--publish`: A  a hoszt gép `8888`-as portjára publikáljs konténer `80`-as portját.


# Build

```
docker build -t rcsnjszg/json-server .
```