pragma solidity ^0.8.0;
contract MutateAssembly9b {
    function test() public {
        assembly {
            let ptr_a := mload(0x0)
            let ptr_b := mload(0x0)
            mstore(0x0, add(ptr_a, ptr_a))
            add(0x0, ptr_a)
        }
    }
}

pragma solidity ^0.8.0;
contract MutateAssembly9c {
    function test() public {
        assembly {
            let ptr_a := mload(0x0)
            let ptr_b := ptr_a
            add(ptr_a, ptr_b)
        }
    }
}
