pragma solidity ^0.8.0;
contract L20 {
    uint public constant value = 0x5bd2b36401db6bd7d1733f9a702b;

    event event0(uint32 arg);
    event event1(uint32 arg);

    event WithEvent0(uint32 indexed arg);
    event WithEvent1(uint indexed arg);

    modifier modifiers1() {
        emit WithEvent0(value);
        _;
    }

    function modifiers2() {
        emit WithEvent1(10);
        _;
    }

    function main() public {
        uint32 test = 21;
        emit event0(test);
        modifiers2;
        emit event1(test);
    }
}
