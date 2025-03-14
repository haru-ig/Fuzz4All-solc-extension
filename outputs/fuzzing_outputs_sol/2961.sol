pragma solidity ^0.8.0;
contract MutatedCaller {
    function mut_fallback() public {
        selfdestruct(address(msg.sender));
    }
    fallback() external payable {
    }
}
