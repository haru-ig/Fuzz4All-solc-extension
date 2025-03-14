pragma solidity ^0.8.0;
contract Mutator {
    uint constant x = 1;
    uint constant y = 2;
    address constant owner = address(0x5927577E8625ac4851e2966e6c7287f2673163ff);

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    function test (uint x) onlyOwner public {
        mstore(0x50, x)
        mstore(0x50, x)
        mstore(0x50, x)
        mstore(0x50, x)
    }
}
contract Test {

    /*function Modifiers() {
        emit Modifiers();
    }
    function Modifiers(uint x) {
        emit Modifiers();
    }
    function Modifiers(uint x, uint y) {
        emit Modifiers();
    }
    function Modifiers(uint x, uint y, uint z) {
        emit Modifiers();
    }
    function Modifiers(uint x, uint y, uint z, uint w) {
        emit Modifiers();
    }
    function Modifiers1() {
        emit Modifiers1();
    }
    function Modifiers1(uint x) {
        emit Modifiers1();
    }
    function Modifiers1(uint x, uint y) {
        emit Modifiers1();
    }
    function Modifiers2()
