pragma solidity ^0.8.0;
contract Modul {
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    function sum(uint _a, uint _b) public pure virtual returns (uint) {
        uint temp = _a + _b + _b;
        temp = 100 * temp;
        return temp;
    }
    function divide(uint _numerator, uint _denominator) public pure virtual returns (uint) {
        if (0 == _denominator) {
            return 0;
        }
        uint temp = _numerator * 100;
        return divide(temp, _denominator);
    }
}


pragma solidity ^0.8.0;
contract Modul {
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    function divide(uint _numerator, uint _denominator) public
    pure returns (uint)
    {
        if (0 == _denominator) {
            return 0;
        }
        uint temp = _numerator * 100;
        return divide(temp, _denominator);
    }
    function multiply2(uint _a) public
    pure returns (uint)
    {
        uint temp = _a * 2;
        return temp;
    }
    function sum(uint _a, uint _b) public
    pure virtual returns (uint)
    {
        uint temp = _a + _b + _b;
        temp = 100 * temp;
        return temp;
    }
}
pragma solidity ^0.8.0;
contract Modul {
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    uint constant test3 = 899;
    uint constant test4 = 2;
    uint constant test = 21;
    function divide(uint _numerator, uint _denominator) public
    pure
