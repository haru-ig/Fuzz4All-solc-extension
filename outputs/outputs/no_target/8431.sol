pragma solidity ^0.8.0;
contract Unsafe4B {
    constructor (address payable _value) public {
        _value = _msgSender();
    }
    function set(uint128 _value) public {
        _value = msg.value;
    }
    function setTwo(address payable _value) public {
        _value = _value;
    }
}
