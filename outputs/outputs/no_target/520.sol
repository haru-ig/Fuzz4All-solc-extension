pragma solidity ^0.8.0;
contract ContractA {
    modifier updateOnlyIfXLessThanY(uint256 x, uint256 y) {
        if (x < y) {
            _;
        }
    }
    uint256 public immutable x=2;
}
contract B {
    uint256 public value;
}
contract A is B {
    uint256 public immutable x;
}
pragma solidity ^0.8.0;
contract ContractA {
    modifier updateOnlyIfXLessThanY(uint256 x, uint256 y) {
        if (x < y) {
            _;
        }
    }
    uint256 immutable x;
}
contract B {
    uint256 immutable value;
}
contract A is B {
}
