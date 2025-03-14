pragma solidity ^0.8.0;
contract Caller2 {
    function get() public view returns(uint) {
        return msg.value;
    }
    function set(uint _x) public {

    }
}
