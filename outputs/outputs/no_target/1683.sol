pragma solidity ^0.8.0;
contract Mutate0015 {
    uint256 input = 0;
    modifier m() {
      input++;
      _;
    }
}
contract Mutate0016 {
    uint256 input = 0;
    modifier m() {
        input++;
        _;
    }
}
contract Mutate0017 {
    uint256 input = 0;
    modifier m() {
        unchecked{
      input++;
      };
    }
}
