Enfin
-----

Troisième slide...
```{logic}
:height: 140
:mode: tryout

{
  "v": 3,
  "in": [
    {"pos": [50, 30], "id": 0, "val": 0, "name": "A"},
    {"pos": [50, 110], "id": 1, "val": 0, "name": "B"}
  ],
  "out": [
    {"pos": [250, 40], "id": 8, "name": "S0"},
    {"pos": [250, 100], "id": 9, "name": "S1"}
  ],
  "gates": [
    {"type": "XOR", "pos": [180, 40], "in": [2, 3], "out": 4},
    {"type": "AND", "pos": [180, 100], "in": [5, 6], "out": 7}
  ],
  "wires": [[0, 2], [1, 3], [0, 5], [1, 6], [4, 8], [7, 9]]
}
```