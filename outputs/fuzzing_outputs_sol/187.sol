pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusFallback4 {
    string public s = "abc";
    receive() external payable {
        revert(s);
    }
}
