pragma solidity ^0.8.0;
contract test {
    uint256[] public testArr;
    uint256 public testNum2;
    uint public publicNum;

    function sum() public returns (uint256){
        return testNum2 + publicNum;
    }


    constructor () {
        testArr[0] = 2;
    }


    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }


    function mul(uint a, uint b) public pure returns (uint) {
        return a * b;
    }


    function assign(uint _a, uint _b) public {
        testNum2 = _b;
    }


    function isBigger(uint _a, uint _b) public view returns (bool) {
        return _a > _b && _a < _b + _b;
    }


    function toBig(uint _a) public returns (uint) {
        return _a + 3;
    }
}
