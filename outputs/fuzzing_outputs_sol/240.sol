pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallback4 {
    constructor() payable {}
    fallback (uint a, uint b) external {
        emit(a);
        emit(b);
    }
}
