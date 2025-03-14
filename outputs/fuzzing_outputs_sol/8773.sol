pragma solidity ^0.8.0;
contract TestCall {

    constructor () { require(callValue() > 0); }
    function callValue() public pure returns (uint) {
        return 1;
    }
}

pragma solidity ^0.8.0;
contract TestFallback {
    contract FallbackCall {
        uint public constant value = 9;
        receive() external payable {}
        function fallback() public pure { }
    }
    function test() public pure {
        new FallbackCall().fallback();
    }
}
