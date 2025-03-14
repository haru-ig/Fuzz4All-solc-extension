pragma solidity ^0.8.0;
 contract CalleeWithFallback {
    Caller _callee;
    function foo() public {
        callFallback();
        _callee.fallback();
    }
}

pragma solidity ^0.8.0;
contract CalleeWithoutFallback {
    Caller _callee;
    function foo() public {
        callFallback();
        _callee.callFallback();
    }
}

pragma solidity ^0.8.0;
contract Caller {
    fallback() external;
}
