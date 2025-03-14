pragma solidity ^0.8.0;
uint32 constant initIB = 46;
contract Q {
    uint32 initIA = 34;
    uint32 IB;
    uint32 IB2;
    constructor() public {
        IB = IB - initIA * 29;
    }
}
```
<br>
## C (Common)
| C.1.1 | Common |
| --- | --- |
| 1 | A |
| 2 | C |
| 3 | B |
| 4 | AB |
| 5 | BC |
| 6 | ABC |
| 7 | AC |
| 8 | BCABC |
<br>
<br>
## C++
| C++.1 | C++ |
| --- | --- |
| 1 | A |
| 2 | C++ |
| 3 | B |
| 4 | A + C(B) |
| 5 | B + C(A) |
| 6 | A + C(B) + C(A) |
| 7 | A(B) + A(C) + C(A) + C(B) |
| 8 | AB + BC + CA + BA + BC + B(A) |
| 9 | BC + CA + BA + CA + CA + AB + B(C) |
| 10 | C + A +B + CA |
| 11 | C(A) + B(A) + B(C) + B(B) |
| 12 | B(A) + A(C) + B + A |
| 13 | A(B) + C(A) + A(C) + B + B(C) + B + A |
| 14 | AB + BC + B + A + BA + BA + CA + BA + B + A |

<br>
<br>
## Python
| Python.1 | Python |
| --- | --- |
| 1 | A |
| 2 | C |
| 3 | B |
| 4 | AB |
| 5 | BC |
| 6 | ABC |
| 7 | AC |
| 8 | BCABC |
