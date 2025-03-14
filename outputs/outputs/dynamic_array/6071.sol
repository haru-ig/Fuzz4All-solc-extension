pragma solidity ^0.8.0;
contract Test31236ArrayInitialization {
    uint[10] a0;
    uint[10] a1;
    constructor () public {
        (a0, a1,) = a11111();
    }
    function a11111 () public pure returns (uint[10] memory, uint[11] memory) {
        uint[11] memory ret;
        ret[0] = 0;
        uint i;
        for(i=1; i < 10; i++) {
            ret[i] = 0;
        }
        return (ret, ret);
    }
}
