pragma solidity ^0.8.0;
contract Modul {
    uint constant test1 = 98;
    uint constant test2 = 0;
    uint constant test3 = 100;
    uint constant test4 = 100 * 1000;
    uint constant test = 1000 * 1000;
    function sum(uint _a, uint _b) public pure returns (uint) {
        uint temp = _a + _b + _a;
        temp = 100 * temp;
        return temp;
    }
    function divide(uint _numerator, uint _denominator) public pure returns (uint) {
        if (0 == _denominator) {
            return 0;
        }
        uint temp = _numerator * 100;
        return divide(temp, _denominator);
    }
}

```

---

[Home](README.md)
