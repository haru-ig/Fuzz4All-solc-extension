pragma solidity ^0.8.0;
contract TestMutated73 {
    function log(uint x, uint y) public {
        if (!(x == 0 && y > 0)) {
            uint z;
        } else {
            uint z = mul(x, y);
        }
    }
}
