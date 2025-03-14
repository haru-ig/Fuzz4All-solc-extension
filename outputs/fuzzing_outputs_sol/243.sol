pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback1 {
    constructor() payable {}
    fallback () external payable {}
}
interface I {

    function f1() external payable;
    function f2() external;
}

pragma solidity >=0.8.0 <0.9.0;
contract CallFallbackFunctionTwoPlusFallback2 {
    constructor() payable {}
    fallback () external payable {
        require(false);
    }
}
