pragma solidity ^0.8.0;
contract SemanticFallback {
    receive() external payable {}
    function () external payable {}
}
contract Caller {
    function send() external payable {
        fallback();
    }
}
