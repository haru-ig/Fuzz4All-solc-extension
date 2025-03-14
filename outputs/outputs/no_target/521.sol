pragma solidity ^0.8.0;
contract ContractA {
    modifier updateOnlyIfXLessThanY(uint256 x, uint256 y) external view {
        if (x < y) {
            _;
        }
    }
}
contract B {
    	uint256 public value= 1;
}
contract A is B {
	uint256 public constant x = 1;
}
