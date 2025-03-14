pragma solidity ^0.8.0;
contract G {
    uint256[3] memory x = [ 1, 2, 3 ];
    uint i = 0;
    uint z = 0;
    constructor(uint256[3] memory input, uint arg) public {
        while( true ) {
            z = 0;
            x[i] = input[i];
            if( x[0] == prev[0] && x[1] == prev[1] && x[2] == prev[2] )
                x[ i ] = prev[0];
            i = (i+1) % 3;
            prev = x;
        }
    }
}
