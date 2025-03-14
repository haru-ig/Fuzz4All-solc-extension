pragma solidity ^0.8.0;
contract Test {
    function add_ints(uint x, uint y) public pure returns (uint z) {
        return x + y;
    }

    uint arr[];

    function add_arrs(uint x, uint y, uint z) public pure returns (uint zz) {
        uint i;
        if (x == uint(0)) {
            return y;
        } else if (x < y) {
            arr[z] = x;
            for(i=0; i<=z-1; i++) {
                zz = zz+add_ints(arr[i],z);
            }
        } else {
            arr[z] = y;
            for(i=0; i<=z-1; i++) {
                zz = zz+add_ints(arr[i],z);
            }
        }
        return zz;
    }
}
