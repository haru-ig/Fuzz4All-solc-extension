pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback3 {
    constructor() payable
    {
        assembly {
            sstore(0, 1)
        }
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback5 {
    function fallback()
    {
        uint x = 1;
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback5 {
    function fallback() public
    {
        uint x = 1;
    }
}
