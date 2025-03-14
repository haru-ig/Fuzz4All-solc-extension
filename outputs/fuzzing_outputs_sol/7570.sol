pragma solidity ^0.8.0;
contract MutedFallback
{
    receive() external payable {}
    function fallback() external
    {
        msg.sender;
        this.fallback();
    }
}

pragma solidity ^0.8.0;
contract MappedFallback
{
    function fallback() public payable
    {
        bytes memory emptyData = new bytes[](0);
        bytes memory data;
        (data,) = emptyData;
        data;

        (data,) = (emptyData, "", data);
        data;
    }
}
```

[back to top](solidity-tutorial-1.md)
