pragma solidity ^0.8.0;
contract old25(){
    function old25(uint16 x, uint y, uint z) public returns (float f) {
        unchecked {
            f = (x - y) * z;
        }
    }
}
