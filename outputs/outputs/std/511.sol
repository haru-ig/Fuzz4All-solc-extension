pragma solidity ^0.8.0;
contract test {
    uint8 public test1 = 1;
    uint8 public test2 = 2;
    function sum() public view returns (uint8){
        return test1 + test2;
    }
}
pragma solidity ^0.8.0;
import './Math.sol';
import './Array.sol';
import './convert.sol';
contract test {
    Array.uint8Array memory testArr1;
    uint8 public testVal1;
    uint8 public testVal;
    function testInit(uint _testVal) public{
        testArr1 = Array.uint8Array(1);
        testVal1 = _testVal;
        testVal = _testVal;
    }
    function testCheck(uint _testValue, bool _checkResult) public {
        if(check(_testValue) == _checkResult) {
            testArr1.push(testVal);
        }
    }
    function isBigger(uint _a, uint _b, uint _sum) public returns (bool) {
        return isBiggerCheck(_a, _b, _sum);

    }
    function check(uint test) public returns (bool) {
        return isBigger(_a, test, test + test);
    }
    function isBiggerCheck(uint _a, uint _b, uint _sum) public returns (bool) {
        return _sum + _a >= _b && _sum + _a < _b + _b;
    }
    function testPush(uint _value, uint _val, uint _sum) public {
        testVal1 = _value;
        testVal = _value;
        testArr1.push(testVal);
        testSum(_sum);
    }
    function testSum(uint256 _sum) public {
        testArr1.pop();
        testArr1.pop();
        _sum += testVal;
        _sum += testVal1;
    }
    function testGetFirst() public returns (uint256) {
        return testArr1.length;
    }
    function testGetNum() public returns (uint256) {
        return testArr1.length;
    }
    function testGetAddress() public returns (address){
        return testArr1[0];
    }
    function
