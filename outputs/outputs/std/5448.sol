pragma solidity ^0.8.0;
contract Mutate10 {
    mapping(address=>uint) myMap;

    uint test = 5;
    uint num1 = 5;

    constructor() {
        myMap[address(this)] = test;
        num1 = 5;
    }
    function putValue(address key, uint value) {
      myMap[key] = value;
    }
    function getValue(address key) view returns (uint value_old) {
      value_old = myMap[key];
    }

}
contract Mutate10 {
    uint8 test;
    uint array[1] storage test2;
    uint num1 = 5;
    uint constant myConstant = 5;
    uint8 constant myConstant8 = 6;

    function putValueNoOp(uint8 value) internal {
        if(value == num1) {
          num1 = 10;
        }

        test = value;
    }
    function getValueAfterZeroOp() view internal returns (uint) {
        if(test == 0) {
          test = 10;
        }
        return test;
    }
    function takeValueAfterZeroOp() internal returns (uint value) {
        if(test == 0) {
          test = 10;
        }
        return test;
    }
}
