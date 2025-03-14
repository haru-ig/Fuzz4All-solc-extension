pragma solidity ^0.8.0;
contract Unsafe4B {
    constructor (
        uint128 _value
    ) public {
        _value = uint128(_value); }
    function set(uint128 _value) public {
        _value = uint128(_value); }
    function setTwo(address payable _value) public {
        _value = payable(_value); }
}
