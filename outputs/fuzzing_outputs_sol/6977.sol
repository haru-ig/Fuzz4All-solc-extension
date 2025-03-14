pragma solidity ^0.8.0;
contract ReturnExample{
    uint internal value;
    function get() public view returns(uint) {
        return value;
    }
    function set(uint _value) public {
        value = _value;
    }
}
