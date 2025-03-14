pragma solidity ^0.8.0;
contract User {
    address payable public fallbackContract;
    function callFallbackFunc() internal {
        require(msg.sender == fallbackContract, "Only fallback can call");
        fallbackContract.transfer(msg.value);
        assert(false);
    }
}
