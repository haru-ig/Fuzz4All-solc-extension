pragma solidity ^0.8.0;
contract E {
    D d;
    uint[5] f;
    uint g;
    constructor(uint[5] memory f) public {
        f = f;
        g=1;
    }
    function setG(uint256 g_) public {
        g = g_;
    };
}
