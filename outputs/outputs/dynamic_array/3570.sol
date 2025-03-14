pragma solidity ^0.8.0;
contract G {
    uint[] x;

    constructor() public {
        assign(y);
    }
    function assign(uint y) public {
        uint[] memory old = x;
        for (uint i = 0; i < 5; i++)
            x.push(i);
        x = old;
    }
}
