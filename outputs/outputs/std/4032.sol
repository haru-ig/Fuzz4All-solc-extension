pragma solidity ^0.8.0;
 contract Multiprecision {
    function getProd(uint x, uint y) public pure returns (uint) {
        return x * y;
    }
    function add(uint x, uint y) public pure returns (uint) {
        uint z;
        assembly {
            switch x
            case 0 {
                z := y
            }

            default {

                add(mload(add(x_addr, 32)), x)

                sub(x, 1)
            }
        }
        return z;
    }
    function sub(uint x, uint y) public pure returns (uint) {
        return add(x, getProd(x, y) >> 256);
    }
    function mul(uint x, uint y) public pure returns (uint) {
        uint z;
        assembly {

            mload(x_addr)

            mul(mload(z_addr), y)

            mstore(x_addr, add(mload(x_addr), 1))
        }
        return z;
    }
    function sqrt(uint x) public pure returns (uint) {
        uint z;
        assembly {


            div(x, 2)

            sll(mload(z_addr), 64)

            mul(x, 3)
            add(mload(z_addr), x)


            sll(mload(z_addr), 8192)
            mul(z, and(x, 1) >> 24)
            mstore(z_addr, add(mload(z_addr), 257))
        }
        return z;
    }
}
