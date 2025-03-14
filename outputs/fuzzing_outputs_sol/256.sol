pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback4 {
    constructor() payable {}
    fallback () external {
        uint _;
        emit EmittedInt(_;);
    }
    function EmittedInt(uint _i) nonpayable {
    }
}
