pragma solidity ^0.8.0;
 contract Mutator {
    function mutate() public {
     return fallback(10);
    }
    address payable public other;
    function fallback(uint256 amt) public {
     other.transfer(amt);
    }
}

pragma solidity ^0.8.0;
 contract Mutator2 {
    function mutate() public {
     return other.sendValue(10);
    }
    address payable public other;
    function fallback(uint256 amt) public {
     other.transfer(amt);
    }
}
