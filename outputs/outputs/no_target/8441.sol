pragma solidity ^0.8.0;
contract Unsafe6 {
    constructor (
        string memory _value
    ) public {
        _value = _value; }
    function set(string memory _value) public {
        _value = _value; }
    function setTwo(address payable _value) public {
        _value = payable(_value); }
}
contract Unsafe7 {
    constructor (
        string memory _value
    ) public {
        _value = _value; }
    function set(string memory _value) public {
        _value = _value; }
}
