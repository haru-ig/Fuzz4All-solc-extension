pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback1 {
    constructor() {

        address payable selfDestructAddress1 = payable(0x00);

        address payable selfDestructAddress2 = payable(0x00);
        selfdestruct(selfDestructAddress1);
        selfdestruct(selfDestructAddress2);
    }
}
