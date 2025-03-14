pragma solidity ^0.8.0;
contract User {
    address payable public fallbackContract;
    function callFallbackFunc() internal returns (uint256) {
        require(msg.sender == fallbackContract, "Only fallback can call");
        fallbackContract.transfer(msg.value);
        assert(false);
    }
}


pragma solidity ^0.8.0;
contract User {
    address payable public fallbackContract;
    receive() external payable {}
    function callFallbackFunc() internal {
        require(msg.sender == fallbackContract, "Only fallback can call");
        fallbackContract.transfer(msg.value);
        assert(false);
    }
}
