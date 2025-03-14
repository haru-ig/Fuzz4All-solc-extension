pragma solidity ^0.8.0;
library Library {
    struct Item {
        uint256 value;
    }
    uint256 public storedValue;
    constructor () public {
        storedValue = 0;
        storedValue = 0 + 2;
    }
    fallback (uint256 a) external {
        storedValue += a;
        emit Fallback(a);
    }
    function fallbackData() public view returns (uint256) {
        return storedValue + 1;
    }
    event Fallback(uint256 input);
}
contract ContractWithoutFallback {
    uint256 public storedValue;
    event EventWithFallback(uint256 input);
    constructor () public {
        storedValue = 0;
        storedValue = 0;
    }
    fallback (uint256 a, uint256 b) public {
        storedValue += a*b;
        emit EventWithFallback(a*b);
    }
    function fallbackData() public view returns (uint256) {
        return storedValue;
    }
}

pragma solidity ^0.8.0;
contract ContractWithAllFallback {
    uint256 public storedValue;
    constructor () public {
        storedValue = 0;
    }
    fallback (uint256 a, uint256 b) public view {
        storedValue += a*b;
    }
    function fallbackData() public view returns (uint256) {
        return storedValue;
    }
}
