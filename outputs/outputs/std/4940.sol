pragma solidity ^0.8.0;
contract CompactifyExample {
    uint256 public immutable number;
    constructor(uint256 a) {
        number = a;
    }
    function hello() public {
        uint256 number = 2;
        number = 5;
    }
    function add(uint256) public {

    }
}
```

[Back](../solidity.md)
