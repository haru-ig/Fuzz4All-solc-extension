pragma solidity ^0.8.0;

contract C {

    constructor(bytes32 myArrayMemoryAddress,uint myArrayMemoryLength) {
        array = myArrayMemoryAddress.value(myArrayMemoryLength)(_data);
        assert(integer == myArrayMemoryLength);
    }

    function _data() private pure returns(bytes32) {
        return keccak256(address(this));
    }
    function setInteger(uint newInteger) public returns (bool) {
        if (msg.sender!= address(this)) revert("not owner");
        integer = newInteger;
        return true;
    }
    function getInteger() public pure returns(uint) {
        return integer;
    }
    function checkConsistency() public pure returns(bool) {
        return array[keccak256(address(this))] == 20;
    }
}
