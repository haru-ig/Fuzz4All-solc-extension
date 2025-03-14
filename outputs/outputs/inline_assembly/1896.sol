pragma solidity ^0.8.0;
contract newY {
    function func() private {
        uint256 max = uint256(1);
        uint256 x = max << 24;
        uint256 y = 16u << uint256(19);
        x = x + y;
    }
}

```
