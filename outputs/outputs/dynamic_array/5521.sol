pragma solidity ^0.8.0;
contract Test72 {
    uint256 public num1;
    constructor() public {
    }
    function modifier() public {
        num1 += 1;
        _;
    }
}

pragma solidity ^0.8.0;
contract Test73 {
    uint256 public i;
    function main() public {
        while (true) {
            i += 1;
        }
    }
}


```

**The tests do not compile.**
