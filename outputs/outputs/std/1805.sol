pragma solidity ^0.8.0;
contract SolidityExample3 {
    uint x1 = 5, x2 = 10;
    mapping (uint => uint) map2;
    uint result = 0;
    uint addResult;




    function multiply(uint x3, uint x4) public pure returns (uint) {
        return x1 * x3 + x3 * x4;
    }
    function print(uint x, uint y) public view onlyOwner {
        uint result2 = multiply(x, y);
        uint result3 = multiply(x, 2);
        if (y >= x + 1){
            result = multiply(y, x1);
        } else if (y + 1 > x) {
            result2 = x1 + x;
            result = multiply(y, x1);
        }
        addResult = x1 + x;
    }
    function multiplyAndPrint(uint x, uint y) public view onlyOwner {
        result = multiply(x, y);
        if (y >= x + 1){
            result = multiply(y, x1);
        } else if (y + 1 > x) {
            x1 = result;
        }
        addResult = x + y;
    }
    function checkEqual(uint x, uint y) public view onlyOwner returns (bool) {
        return x == y;
    }
    function checkGreaterThan(uint x, uint y) public view onlyOwner returns (bool) {
        return y >= x;
    }
    function checkGreaterThanOrEqual(uint x, uint y) public view onlyOwner returns (bool) {
        return x > y;
    }
    function checkLessThan(uint x, uint y) public view onlyOwner returns (bool) {
        return x < y;
    }
    function checkLessThanOrEqual(uint x, uint y) public view onlyOwner returns (bool) {
        return y <= x;
    }
    function checkNotEqual(uint x, uint y) public view onlyOwner returns (bool) {
        return x!= x;
    }

    mapping (uint => string) memory text;
    string s;
    string memory sMemory;
    mapping (uint => string) str2;
    mapping (uint => string[] memory) str3;

    modifier onlyOwner { require(msg.sender == owner(), "Only owner is allowed."); _;}

    constructor() {}
    function getString() public pure returns (string memory) {

        return this.s;

    }
    function getStringValue() public view returns (string memory) {
        return this.s;
    }
    function doSomething(uint x) public pure {
        this.s += x.toString();
    }
    function doNothing() public pure {}
    function doNothingWithAddress(address self){
        doNothing();
    }
    function initialize(address self)
