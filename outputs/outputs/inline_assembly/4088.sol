pragma solidity ^0.8.0;
contract Mutations {
    uint constant a1 = 1;
    uint constant m1 = 1;
    uint constant a2= 2;
    uint constant m2= 1;
    function bar(uint x) public {
        assembly {
            mstore(add(a1, 0x40), mmul(a2, x))
            mstore(add(m1, 0x40), mload(add(a1, 0x40)))
            mstore(add(m2, 0x40), mload(add(m1, 0x40)))
        }
    }
}
