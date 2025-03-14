pragma solidity ^0.8.0;
contract Test21 {
    address public foo;

    event e(uint, uint8);
    event e8(uint);
    event e18(uint);
    event e20(uint);
    event e59(uint);
    event e590121(uint);
    event e3586290(uint);
    function f(address a) public payable {
        unchecked {
        }
        emit e(0xFFFFFFFFFFFFFFFFFFFF, 1);
        emit e8(0xFFFFFFFFFFFFFFFF);
        emit e18(0xFFFFFFFFFFFFFFFFFFFFFFFLLLLLLL);
        emit e20(0xFFFFFFFFFFFFFFFLLLLLLL);
        emit e59(0xFFFFFFFFFFFFFFFFFFFFFFFFLLLLLLL);
        emit e590121(0xFFFFFFFFFFFFFFFFFFFFFFFLLLLLLL);
        emit e3586290(0xFFFFFFFFFFFFFFFFFFFFFFLLLLLLL);
        foo = a;
    }
}
