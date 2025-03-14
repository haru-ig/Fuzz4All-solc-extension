pragma solidity ^0.8.0;
contract L1 {
    function f(uint _y) public {
        uint k = 0;
        assembly {
            k := _y + 1
            switch k {
                case 100 -> mstore(k, 100)
                case 1000 -> mstore(k, 1000)
            }
            k := mload(k, k)
        }
    }
}
