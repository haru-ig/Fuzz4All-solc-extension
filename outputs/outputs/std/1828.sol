pragma solidity ^0.8.0;
contract SolidityExample5 {
    uint x;
    uint[] y;
}
contract SolidityExample6 {
    uint y[10];
    uint z;
    function set_z() public {
        z = 5;
    }
}
contract SolidityExample7 {
    uint256[] x = [7,13,7,4,4];


    function solve(uint x_) returns(uint y_) {

        y_[0] = x_[1] += x_[0];
    }
}
contract SolidityExample8 {
    uint256[2,3] x = [10, 14, 24, 8, 1, 4, 5, 7, 1, 8, 8, 6, 2];




    function solve(uint z, uint y1, uint y2) returns (uint z2_) {
        if (z >= y1) {
            z2_ = x[uint(uint256(z) < uint256(y1))] = x[uint(uint256(y1) < uint256(z))]++;
        }
    }
}
struct Vector {
    uint x;
    uint y;
}
