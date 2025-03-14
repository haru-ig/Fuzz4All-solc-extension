pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_6 {
    constructor() payable {}
    fallback (uint a) payable {}
}
contract CallFallbackFunctionThreePlusFallback_4 {
    constructor() payable {}
    fallback () external payable {   }
}
contract CallFallbackFunctionThreePlusFallback_5 {
    constructor() payable {}
    fallback () external payable {   }
}
