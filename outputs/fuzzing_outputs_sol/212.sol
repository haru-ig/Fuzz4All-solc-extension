pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback2
{
    uint256 pay;

    constructor() {
        pay = 10**14;
    }

    fallback () receive {
        msg.sender.transfer(pay);
        msg.sender.transfer(pay);
        msg.sender.transfer(pay);
    }
}
