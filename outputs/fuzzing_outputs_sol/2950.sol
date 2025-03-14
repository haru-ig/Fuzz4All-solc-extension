pragma solidity ^0.8.0;

contract MutatedCaller4 {
    modifier neverFallback4 {
        require(msg.value == 0);
        require(block.timestamp > 0);
        _;
    }
    function pay_fallback() public payable {
        uint256 my_uint = 11;
        address payable someAddress;
        uint someUint;
        try Pay1(someAddress, someUint) {} catch {}
    }
    function mut_fallback() public {
    }
    event MutCallerFallback();
}
