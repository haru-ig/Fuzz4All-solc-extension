pragma solidity ^0.8.0;
contract FallbackReceivable {
    receive() external payable {
    };
    function fallback() external payable {}
}
