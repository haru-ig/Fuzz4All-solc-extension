pragma solidity ^0.8.0;
contract FallbackCaller {
    function receive() external payable {
        uint256 value = msg.value;
        uint256 myFunction() external pure {
            value = 5370;
        }
    }
}
