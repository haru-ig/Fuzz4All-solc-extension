pragma solidity ^0.8.0;
contract QB {
    uint constant Init = 2;
    uint rAB;
    uint rAB2;
    constructor () public {
        rAB = rAB2;
        rAB2 = rAB + rAB2 - rAB2 + rAB2 + rAB2;
            rAB = rAB + rAB2 - rAB2 + rAB2 + rAB2;
            rAB = rAB2 + rAB + rAB2 + rAB2 + rAB2;
    }
}








/* Because the contract is already deployed, we can't reuse it without redeploying the smart contract. This is the responsibility
