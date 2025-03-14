pragma solidity ^0.8.0;
contract Example18 {

    fallback function () external pure {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success, "Example18: fallback function failed.");
    }
}
```

## Exercise 19
