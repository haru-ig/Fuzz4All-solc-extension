pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback3 {
    constructor() {
        function() external payable {

        }
    }
}
contract FallbackContract {
    fallback() external payable {
    }
    receive() external payable {
    }
}
contract CallFallbackFunctionTwoPlusFallback4 {
    constructor() {
        address payable selfDestructAddress = payable(address(0x00));
        selfdestruct(selfDestructAddress);
    }
}
contract CallFallbackFunctionWithReturn {
    function foo() public pure returns (uint32) {
        return 1;
    }
}
contract CallFallbackFunctionWithReturnAndParameter {
    function foo(uint32 _return) public pure returns (uint32) {
        return _return;
    }
}
contract CallFallbackFunctionWithReturnAndParameterAndStorage {
    uint storage x;

    function foo(uint32 _r1, uint32 _r2) public {
        x = foo(_r1, _r2);
    }

    function foo2(uint32 _r1, uint32 _r2) public view returns (bool) {
        return x == foo(_r1, _r2);
    }
}
