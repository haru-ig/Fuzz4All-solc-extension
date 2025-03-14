pragma solidity ^0.8.0;
contract G {
    uint[3][3] x = [ [ 1, 2, 3 ], [ 4, 5, 6 ], [ 7, 8, 9 ] ];
    function () public pure {
        x[0][0];
    }
}
