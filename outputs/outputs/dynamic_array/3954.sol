pragma solidity ^0.8.0;
contract C {
    uint[][] x;
    uint y[];
    uint z;
    function init() public {
        x = [[1]];
        x.push([[2,1], [3,4]]);
        x.push([[5,1,4], [6,3,5]]);
        y = [x[0][0]];
        y[0] = x[1][0];
        y.push([x[2][0]]);
        z = x.length;
    }
}
