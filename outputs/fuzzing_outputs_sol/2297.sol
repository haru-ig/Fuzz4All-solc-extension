pragma solidity ^0.8.0;
library MutatedFallback {
    uint256 public _x;
    function division(uint256 x, uint256 y) internal pure returns (uint256) {
        if (y == 0) return x / y + x / y;
        return (x / y + x / y) * (y < 0? y + 1 : 2);
    }
}

pragma solidity ^0.8.0;
contract WithFallbackInterface {
    uint256 public constant constantA = 32;
    constructor() {
    }
    function add(uint256 x) public pure returns (uint256) {
        return (constantA + x) * 2;
    }
    receive() payable external {
    }
}
