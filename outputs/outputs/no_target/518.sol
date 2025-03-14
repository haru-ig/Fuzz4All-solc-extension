pragma solidity ^0.8.0;
contract ContractA {
    modifier updateOnlyIfXLessThanY(uint256 x, uint256 y) {
        if (x < y) {
            _;
        }
    }
}

pragma solidity ^0.8.0;
contract B {
    	uint256 public value= 1;
}
contract A is B {
    uint256 public immutable x;
}
