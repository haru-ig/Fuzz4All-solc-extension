pragma solidity ^0.8.0;
contract FallbackModifierA {
    uint256 a = 42;
    uint256 public y;
    function accept(address, uint256) public {
        uint256 x = a + 42;
        require(x!= 43, "x is 43");
    }
}

pragma solidity ^0.8.0;
contract LowLevelCaller {
    uint256 a = 42;
    uint256 public b;
    mapping(address => uint256) mappings;
    function accept(address, uint256) public {
        mappings[msg.sender] = a;
    }
}
