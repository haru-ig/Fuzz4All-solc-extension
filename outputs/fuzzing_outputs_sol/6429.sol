pragma solidity ^0.8.0;
contract Fallback {
    function foo() public pure {
    }
    function getFallback() public pure returns (Fallback foo) {
        foo = Fallback();
        return;
    }
}
