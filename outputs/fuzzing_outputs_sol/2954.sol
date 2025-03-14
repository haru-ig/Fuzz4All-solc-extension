pragma solidity ^0.8.0;
contract MutatedCaller1 {
    modifier neverFallback {
        require(msg.value == 0);
        require(block.timestamp > 0);
        _;
    }
    function mut_fallback() public {
    }
    fallback() external payable {
        emit MutCallerFallback();
    }
    event MutCallerFallback();
}
