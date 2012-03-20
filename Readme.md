
# ms.sh

  A tiny bash script to convert milliseconds to strings,
  and strings to milliseconds.

## Usage

```
. ms.sh

ms <string>
ms_to_s <ms>
```

## String to milliseconds

```sh
ms 1000
ms 1s
ms 1m
ms 1h
ms 1d
ms 1y
ms 10s
ms 5d
```

```
1000
1000
60000
3600000
86400000
31557600000
10000
432000000
```

## Milliseconds to string

```sh
ms_to_s $(ms 500)
ms_to_s $(ms 1s)
ms_to_s $(ms 15s)
ms_to_s $(ms 25m)
ms_to_s $(ms 60m)
ms_to_s $(ms 1h)
ms_to_s $(ms 2h)
ms_to_s $(ms 1d)
ms_to_s $(ms 5d)
ms_to_s $(ms 1y)
ms_to_s $(ms 5y)
```

```
500 milliseconds
1 seconds
15 seconds
25 minutes
1 hours
1 hours
2 hours
1 days
5 days
1 years
5 years
````