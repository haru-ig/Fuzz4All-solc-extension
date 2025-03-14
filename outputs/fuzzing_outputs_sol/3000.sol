pragma solidity ^0.8.0;
contract Caller {
    function sendEther() public payable {
        uint256 balance = address(this).balance;
        (bool success, ) = payable(msg.sender).call{value: balance}("");
        require(success, "Failed to send Ether");
    }
}
```

---
