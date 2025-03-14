pragma solidity ^0.8.0;
contract MutatedExample {
    uint64 private myNumber;
    function example(uint64 _testNumber) public returns (uint64) {
        uint64 testValue;
        testValue = _testNumber;
        myNumber = testValue + 1;
    }
    function getValue() public view returns (uint64) {
        return myNumber;
    }
    function subFrom(uint64 _numberOf1) public pure returns (uint64) {
        return myNumber - _numberOf1;
    }
}

pragma solidity ^0.8.0;
contract MutatedExample {
    uint64 private myNumber;
    function example(uint64 _testNumber) public {
        uint64 testValue;
        testValue = _testNumber;
        myNumber = testValue + 1;
    }
    function getValue() public view returns (uint64) {
        return 1;
    }
    function subFrom(uint64 _numberOf1) public pure returns (uint64) {
        return myNumber - _numberOf1;
    }
}
