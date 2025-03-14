pragma solidity ^0.8.0;
contract User {
    function callFallbackFunc() internal payable {
        fallbackContract.transfer(msg.value);
        assert(false);
    }
}
