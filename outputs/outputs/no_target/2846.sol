pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract oldStorage {
    uint b;
    function set(uint _value) public {
        b = _value;
    }
    function get() public view returns (uint) {
        return b;
    }
}
