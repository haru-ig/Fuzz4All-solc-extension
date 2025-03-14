pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    function sum(uint _a, uint _b) external pure returns (uint) {
        uint temp = _a + _b + _b;
    }
    function divide(uint _numerator, uint _denominator) public pure returns (uint) {
        if (0 == _denominator) {
            return 0;
        }
        uint temp = _numerator * 100;
        return divide(temp, _denominator);
    }
    function createTest(Modul memory _mod){

        uint result = sum(90, 7);
        require(result == 28, "Sum failure");

        result = divide(_mod.test, _mod.test2);
        require(result == 9800, "Divide failure");

        temp = createTest(20);
        result = _mod.test * temp * temp;
        require(result == 225000, "Divide failure");
    }
}
