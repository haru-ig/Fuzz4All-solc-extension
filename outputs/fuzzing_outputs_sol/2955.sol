pragma solidity ^0.8.0;
contract MutatedCaller2 {
    modifier neverFallback {
        require(msg.data.length > 0);
        _;
    }
    function mut_fallback() public {
    }
    fallback() external payable {
        emit MutCallerFallback();
    }
    event MutCallerFallback();
}
