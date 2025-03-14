pragma solidity ^0.8.0;
contract Unsafe3C {
    constructor (address payable _value) public {
        _value = payable(_value);
    }
    function set(uint256 _value) public {
        _value = uint256(_value);
    }
    function setTwo(address payable _value) public {
        _value = payable(_value);
    }
}
