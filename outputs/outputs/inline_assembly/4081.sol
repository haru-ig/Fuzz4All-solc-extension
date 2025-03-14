pragma solidity ^0.8.0;
contract SemanticsEquivalence32x64 {
    address constant a = 0x55505000000000000000000000000000000000000;
    address constant b = 0x8000000000000000000000000000000000000001;
    function bar() public {
        assembly{

            mstore(add(1, 0x20), 1)

            mstore(add(200, 0x20), 2)

            mstore(add(1000, 0x20), 0x10)

            mstore(add(2000, 0x20), mload(a))


            mstore(add(24, 0x20), 3)
        }
    }
}
