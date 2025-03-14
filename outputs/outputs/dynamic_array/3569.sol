pragma solidity ^0.8.0;
contract G {
    mapping (uint => uint) x;
    uint[] memory y = new uint[](7);
    uint z;
    constructor() public {
        z = y.length;
        y[7] = z + 1;
    }
    function g(uint y) public {
        x[x[1]] = x[x[0]] + 1;
        x[x[2]] = x[x[0]] + 1;
        x[x[5]] = x[x[0]] + 1;
        x[x[1]] = x[x[x[6]]] + 1;
        x[x[y]] = x[x[y]] + 1;
        x[x[6]] = x[x[y]] + 1;
    }
}
