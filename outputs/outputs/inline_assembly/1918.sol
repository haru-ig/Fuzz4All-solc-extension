pragma solidity ^0.8.0;
contract olderY {
    uint256 public constant x = 3;
    uint256 public constant z = x + 5;

    function func() public {
        uint256 k;
        uint256 y;
        while (k!= 3) {
          k++;
          y = (x + 5) + y;
        }
    }
}

```
