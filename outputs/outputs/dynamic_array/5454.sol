pragma solidity ^0.8.0;
import '../test/Test40.sol';
contract Test41 {
    function f() public returns (uint[10]) {
        uint[10] memory x = new uint[10>();
        uint[10][10][][][] memory y = new uint[10][10][10][10][10][10][][];
        x[33] = (_arrB[2][3][2][3][1][3] + 1);
        y[0][1][2][3][4][66] = x.length;
        return (x);
    }
}
