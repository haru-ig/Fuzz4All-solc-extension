pragma solidity ^0.8.0;
contract Mutated {
    function modify(Mutated storage self) public {
    }
}

pragma solidity ^0.8.0;
contract Filters {
    uint256 public a;


    uint256 min(uint256 a, uint256 b, uint256 c) internal pure returns (uint256) {
        return a < b? (a < c? a : c) : (b < c? b : c);
    }
}
