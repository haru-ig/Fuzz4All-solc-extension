pragma solidity ^0.8.0;
contract Unsafe6B {
    constructor (
        string memory _value
    ) public {
        _value = _value; }
    function set(string memory _value) public {
        _value = _value; }
    function settwo(address payable _value) public {
        _value = payable(_value); }
    }

pragma solidity ^0.8.0;
contract Unsafe7B {
    constructor (
        string memory _value
    ) public {
        _value = _value; }
    function set(string memory _value) public {
        _value = _value; }
    function setone(address payable _value) public {
        _value = payable(_value); }
    }
