pragma solidity ^0.8.0;
contract mutatedCaller3 {
    receive() external { }
    function fallback() internal pure { }
}

contract NoArgumentFallbackTest {
    bytes1 f;
    receive() external { }
    function receive() public pure { }
    function fallback() public pure returns (bytes1) {
        return f;
    }
    function f() public pure {
        f = 2;
    }
}
contract NoArgumentFallbackTest2 {
    bytes1 f;
    fallback() public pure { }
    receive() external { }
    constructor () public {}
    function f() public pure {
        f = bytes1(1);
    }
}
