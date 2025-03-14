pragma solidity ^0.8.0;
contract Mutated10 is Mutated10 {
    function subtract(uint a) pure public returns(uint) {
        return 10 - a;
    }
}
contract SimpleContract10 {
    function add(uint y) pure public returns(uint) {
        return 10 + y;
    }
    function subtract(uint y) pure public returns(uint) {
        return 10 - y;
    }
    function multiply(uint y) pure public returns(uint) {
        return 10 * y;
    }
}
contract SimpleContract10 is SimpleContract10 {
    function add(uint a) pure public returns(uint) {
        return 10 + a;
    }
    function subtract(uint a) pure public returns(uint) {
        return 10 - a;
    }
    function multiply(uint a) pure public returns(uint) {
        return 10 * a;
    }
}
