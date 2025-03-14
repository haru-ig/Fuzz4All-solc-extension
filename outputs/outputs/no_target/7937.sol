pragma solidity ^0.8.0;
contract TestMutator {
    address[] internal addressArray;
    uint public last;
    constructor(uint256 _value1) public {
        addressArray.push(address(this));
    }
    function push(uint a) public {
      addressArray.push(address(last));
    }
    function push2(uint a) public {
        uint _value2 = 0xdeadbeef;
        addressArray.push(_value2);
    }
    function push3(uint a, uint b) public {
        uint _value3 = 0xdeadbeef;
        uint _value4 = 0xdeadbeef;
        addressArray.push(_value4);
        last = addressArray[addressArray.length - 1];
    }
}
