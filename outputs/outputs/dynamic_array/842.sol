pragma solidity ^0.8.0;
contract Equivalent {
    struct A {
        uint16 a;
    }
    function x() public pure returns (A memory) {
        A memory a;
        assembly {
            a := mload(0x40)
        }
        return a;
    }
}
