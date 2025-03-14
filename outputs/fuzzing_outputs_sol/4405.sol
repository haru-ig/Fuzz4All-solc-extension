pragma solidity ^0.8.0;
contract Mixin {
    address payable fallbackContract;
    function callFallbackFunc() internal {
        require(msg.sender == fallbackContract, "Only fallback can call");
        fallbackContract.transfer(msg.value);
        assert(false);
    }
}
