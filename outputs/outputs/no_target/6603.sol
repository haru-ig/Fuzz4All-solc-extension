pragma solidity ^0.8.0;
contract modifierWithParamW {
    function f(uint x) public pure returns (uint) {

    }
    function g(uint x) public pure returns(uint) {
        x = (x & 3) + (x * 3 + 2 * (x + x)) + x * x * 3;
        x = ((x & 3) + (x * 3 + 2 * (x + x)) + x * x * 3);
        return x;
    }
}
contract WithParamW{
    modifierWithParamW public;
    modifierWithParamW public view returns(uint);
    modifierWithParamW public pure returns(uint);
    modifierWithParamW public view returns (uint);
    modifierWithParamW public pure returns(uint);

    function foo() public {

    }

    function bar() public {

    }

    function baz(uint x) public {

    }

    function tquux(uint x) public view returns(uint) {

    }

    function wquux(uint x) public view returns(uint) {

    }

    function xwquux(uint x) public view returns(uint) {

    }

    function ywquux(uint x) public view returns(uint) {

    }

    function zyquux(uint x) public view returns(uint) {

    }

    function quuuxWithFandG(uint x) public view returns(uint) {

    }
    function quuuxWithOutParamW(uint x) public view returns(uint) {
        if (_check1()) {
            return f(0) * f(1) * f(2) * f(3);
        } else {
            return 1 * 1 * 1 * 1;
        }
    }

    function quuuxWithParamW1(uint x) public view returns(uint) {
        modifierWithParamW private;
        modifierWithParamW(uint x) _;
        modifierWithParamWith
