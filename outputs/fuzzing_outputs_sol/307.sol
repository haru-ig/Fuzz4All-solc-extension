pragma solidity ^0.8.0;
contract CallFallbackFunction3PlusFallback_10_S {
    modifier onlyFallback() {
        if (msg.data.size() > 0)
            msg.sender.transfer(this.balance);
        else
            fallback();
        _;
    }

    fallback() external payable {}
}
contract CallFallbackFunction4PlusFallback_3_S {
    constructor() {}
    receive() external payable {}
}
