pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample108SemialgebraicEquiv {
    function get( ) {
        uint y;
    }
    uint x;
    uint8 x;
    uint256 public y;
    constructor() {
        x = 1;
        y = 2;
    }
    function test( ) public {
        if (x == 1) {
            x = 2;
        }
        if (y == 1) {
            y = 2;
        }
        if (x == 2) {
            x = 3;
        }
        if (y == 3) {
            y = 4;
        }
        test( );
    }
}
contract OptimizelyExample109SemialgebraicEquiv {
    function get( ) {
        uint x;
