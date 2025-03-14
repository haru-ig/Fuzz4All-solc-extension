pragma solidity ^0.8.0;
contract BetterCase625 {
    uint value;
    function set(uint x) public {
        value = value + 1
    }
    function get() public view returns (uint) {
        return value;
    }
}

pragma solidity 0.8.2;
contract BetterCase689 {
    uint value;
    function set(uint x) public {
        value = value + 1
    }
    function get() public view returns (uint) {
        return value;
    }
}
```
