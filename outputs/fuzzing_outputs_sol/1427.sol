pragma solidity ^0.8.0;
contract FallbackExample{
    event ReceivedEther(address contractAddress, uint256 amount);
    function fallback(uint256 amount) payable external {
        emit ReceivedEther(address(this), amount);
    }
}

pragma solidity ^0.8.0;
contract EmptyFallbackExample {
    event ReceivedEther(address contractAddress, uint256 amount);
    function() external payable {
        emit ReceivedEther(address(this), msg.value);
    }
}
