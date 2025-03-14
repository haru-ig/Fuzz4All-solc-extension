pragma solidity ^0.8.0;
contract Test90006_2 {
    uint256[] x1;
    uint256[] x2;
    uint256 y1;
    uint256 y2;
    constructor () public {
        x1 = [y1];
        x2 = [y1];
        x1[0] = x1[0];
        x2[0] = x1[0];
    }
    fallback () external {
    }
    event Mutate ();
}
