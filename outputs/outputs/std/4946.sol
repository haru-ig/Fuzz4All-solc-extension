pragma solidity ^0.8.0;
contract MutatedExample is MutateExample {
}
contract Invalid {
    function hello() public {
        uint256[3] memory a;
        a[2] = 0;
    }
}
contract Valid {
    function hello() public {
        uint256[3] memory a;
        a[2] -= 1;
    }
}
contract AddExample {
    uint256 public immutable number;
    constructor() {
        number = 14;
    }
    function hello() public {
        uint256 number = 3;
        number += 3;
    }
}
