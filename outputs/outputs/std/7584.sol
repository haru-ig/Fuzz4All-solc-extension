pragma solidity ^0.8.0;
contract BetterCase12 {
    function greet() external view returns (address) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract BetterCase12 {
    address x  = 0x0;
    modifier change{
        x = msg.sender;
        _;
    }
    uint public y = 100;
    function greet() public change view returns (address) {
      return x;
    }
}
