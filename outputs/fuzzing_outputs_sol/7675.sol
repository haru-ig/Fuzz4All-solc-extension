pragma solidity ^0.8.0;
contract SemanticEquivalenceV2
{
    constructor() { revert(); }
    function semanticEquivalence() public pure virtual { revert(); }
    function semanticEquivalence2() public pure virtual { revert(); }
}

pragma solidity ^0.8.0;
contract InvalidFallback
{
    constructor() { revert(); }
    function fallback() public pure { revert(); }
    receive() external payable { revert(); }
}
contract LowLevelCaller
{
    constructor() { revert(); }
    function callFallback() public pure virtual { revert(); }
}
contract TransferToSelf
{
    constructor() { revert(); }
    function callFallback() public pure virtual { revert(); }
    receive() external payable { revert(); }
}
contract LowLevelCallerFallback
{
    constructor() { revert(); }
    function callFallback() public pure virtual { revert(); }
    receive() public pure virtual { revert(); }
}
contract ReceiveFunctionTooLow
{
    constructor() { revert(); }
    function receiveFallback() public pure virtual { revert(); }
}
contract LowLevelCallerTooLow
{
    constructor() { revert(); }
    function fallback() public pure virtual { revert(); }
    receive() public pure virtual { revert(); }
}
contract ReceiveFunctionTooHigh
{
    constructor() { revert(); }
    function receiveFallback() public pure virtual { revert(); }
}
contract LowLevelCallerTooHigh
{
    constructor() { revert(); }
    function fallback() public pure virtual { revert(); }
    receive() public pure virtual {}
}
contract ReceiveFunctionTooHighFromFallback
{
    constructor() { revert(); }
    function callFallback() public pure virtual { revert(); }
    receive() external pure virtual { revert(); }
}
contract ReceiveFunctionTooMany
{
    constructor() { revert(); }
    function receiveFallback() public pure virtual { revert(); }
}
contract LowLevelCallerTooMany
{
    constructor() { revert(); }
    function fallback() public pure virtual { revert(); }
    receive() public pure virtual {}
}
contract ReceiveFunctionTooManyCalls
{
    constructor() { revert(); }
    function fallback_() public pure virtual { revert(); }
    receive() public pure virtual {}
}
