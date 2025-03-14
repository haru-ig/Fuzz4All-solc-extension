pragma solidity ^0.8.0;
contract Mutated_2_3_1 {
   function mul(uint x, uint y) public pure returns (uint a) {
        require((x | y) < 2**64);
        if (x < y) {

            uint256 t = x + y;
            uint z = uint(x);
            assembly {

                mstore(0x40, xor(gt(x,y), mload(0x40)))
                x := and(sub(t,z), mload(0x40))
                mstore(0x40, x)
            }
        } else {
            uint256 t = x - y;
            uint z = uint(x);
            assembly {

                mstore(0x40, xor(gt(x,y), mload(0x40)))
                x := and(sub(t,z), mload(0x40))
                mstore(0x40, x)
            }
        }
        return a = uint(x) * uint(y);
    }
}
