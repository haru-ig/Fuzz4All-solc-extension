pragma solidity ^0.8.0;


contract AssemblyMutator {
    function mutate() public {
        uint y = 0x123;
        assembly {
            let ptr1 := mload(add(ptr1, mload(ptr2)))
            let ptr2 := mload(add(ptr1, mload(0x0)))
            let p1 := mload(add(ptr1, mload(ptr2)))
            let p2 := mload(add(ptr1, mload(0x0)))
            let p3 := add(p3, p1)
            mstore(ptr2, p3)
        }
    }
}
