pragma solidity ^0.8.0;
contract Caller {
    uint storedData;
    function setValue(uint input, uint storedData) public {
        storedData = input;
    }

    function getValue() public view returns(uint) {

        storedData.value(this.calldata.msg.value)(1);
        return storedData;
    }
}
