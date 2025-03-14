pragma solidity ^0.8.0;
contract Gen1 {
    function m(uint x, uint y, uint z) public pure returns(uint c) {
        for (uint i=0; i<y; i++) {
            c = c+x;
        }
    }
}
