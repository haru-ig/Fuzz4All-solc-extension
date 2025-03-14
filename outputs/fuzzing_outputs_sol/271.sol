pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusPayableFallback2 {
    constructor(uint) {}
    fallback (uint) external payable {}
}
contract CallFallbackFunctionTwoPlusFallback3 {
    constructor() payable {}
    fallback () external payable {}
}

contract CallFallbackFunctionTwoPlusFallback1 {
    constructor() payable {}
    fallback () external pure {
        return;
    }
}
contract CallFallbackFunctionTwoPlusFallback5 {
    constructor() payable {}
    fallback() external pure {
        return;
    }
}
contract CallFallbackFunctionTwoPlusFallback4 {
    constructor() payable {}
    fallback() external pure {
        return;
    }
}
