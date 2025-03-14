pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_3_B {
    constructor() payable {}
    fallback () external payable {}
}
contract CallFallbackFunctionTwoPlusFallback_2_B {
    constructor() payable {}
    fallback () external payable {}
}
contract CallFallbackFunctionTwoPlusFallback_1_B {
    constructor() payable {}
    fallback () external payable {}
}
pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback_0_B {
    constructor() payable {}
    fallback () external pure {}
}

pragma solidity ^0.8.6;
contract CallFallbackFunctionTwoPlusFallback_6_B {
    constructor() payable {}
    fallback () external payable {
