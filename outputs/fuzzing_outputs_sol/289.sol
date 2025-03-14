pragma solidity ^0.8.0;
interface CallFallbackFunctionOnePlusFallback {
    function _fallback() external payable;
}
contract CallFallbackFunctionOnePlusFallback_1 {
    constructor() payable {}
    function _fallback() public payable {}
}
contract CallFallbackFunctionOnePlusFallback_2 {
    constructor() payable {}
    function _fallback() public payable {}
    receive () external payable {}
}
contract CallFallbackFunctionOnePlusFallback_3 {
    constructor() payable {}
    function _fallback() public payable {}
    receive () public payable {}
}
contract CallFallbackFunctionOnePlusFallback_4 {
    constructor() payable {}
    function _fallback() public payable {}
    receive () external {}
}
contract CallFallbackFunctionOnePlusFallback_5 {
    constructor() payable {}
    function _fallback() public payable {}
    receive () external pure {}
}
