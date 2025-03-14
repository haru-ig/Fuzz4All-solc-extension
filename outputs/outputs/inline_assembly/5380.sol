pragma solidity ^0.8.0;
contract Qc {
    uint internal constant Init = 17;
    uint internal xBc;
    uint public xc;
    mapping (uint => uint) public yBc;
    constructor () public {
        xBc = 15;
        xc = Init;
        yBc [Init] = Init;
        for (uint x = 0; x < 10000; x++) {
            xc = xc + Init;
        }
    }
}
