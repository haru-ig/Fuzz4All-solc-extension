pragma solidity ^0.8.0;
contract L120 {
        uint8 internal x;
        function add(uint8 z1) public pure returns (uint8 z2) {
                x = x + z1;
                uint8 z;
                assembly {
                        z := x
                        mstore(0x100, z)
                }
                z2 = z;
        }
}
