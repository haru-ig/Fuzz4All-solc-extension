pragma solidity ^0.8.0;
contract Arrays2 {
    constructor () {
        b2 = new bytes4[5][];
        b2[0] = new bytes4[0];
        b2[0][0] = new bytes4(42);
    }
    bytes4[5][][4][7] memory public b2;
}
