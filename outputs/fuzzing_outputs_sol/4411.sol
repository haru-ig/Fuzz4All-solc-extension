pragma solidity ^0.8.0;
contract Mixin {
    function callFallbackFunc() internal returns(uint) {
        return fallbackContract.transfer(msg.value);
    }
}
