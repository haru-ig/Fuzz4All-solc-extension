pragma solidity ^0.8.0;
contract Unsafe4B2 {
    mapping(uint128 => uint128) public map;
    mapping(uint128 => mapping(uint8 => uint8)) public bytesMap;
    contract A {
        function setTwo(uint128 _value) public {
            map[_value] = uint128(_value); }
    }
    contract B extends A {
        mapping(uint16 => uint16) public map; }
}
contract Unsafe4B {
    constructor (uint128 _value) public {
        _value = uint128(_value); }
    function set(uint128 _value) public {
        _value = uint128(_value); }
    function setTwo(uint128 _value, uint8 _n) public {
        _value = uint128(_value); }
    function _getTwo(uint128 _value) public pure {
        _value = uint128(_value); }
    function _getTwoTwo(uint128 _value,, uint8 _n) public pure {
        _value = uint128(_value); }
    function _getTwoThree(uint128 _value, uint8 _n) public pure {
        _value = uint128(_value); }
    function _setTwoThree(uint128 _value, uint8 _n) public {
        _value = uint128(_value); }
}
