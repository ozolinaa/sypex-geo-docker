# sypex-geo-docker

Forked from https://github.com/DevGroup-ru/sypex-geo-daemon/

It is containerized using Docker:
- `docker build . -t 'xtonyx/sypex-geo'`
- `docker run -d --restart=unless-stopped -p 16001:16001 --name sypex-geo xtonyx/sypex-geo`


http://127.0.0.1:16001/?ip=213.180.204.3

```json
{
    "city": {
        "id": 524901,
        "lat": 55.75222,
        "lon": 37.61556,
        "name_ru": "\u041c\u043e\u0441\u043a\u0432\u0430",
        "name_en": "Moscow"
    },
    "region": {
        "id": 524894,
        "name_ru": "\u041c\u043e\u0441\u043a\u0432\u0430",
        "name_en": "Moskva",
        "iso": "RU-MOW"
    },
    "country": {
        "id": 185,
        "iso": "RU",
        "lat": 60,
        "lon": 100,
        "name_ru": "\u0420\u043e\u0441\u0441\u0438\u044f",
        "name_en": "Russia"
    },
    "time": "0.000406980515",
    "error": false
}
```
