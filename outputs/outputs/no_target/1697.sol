pragma solidity ^0.8.0;
contract Mutate0015b {
    uint256 input;
    modifier m() public {
        input = input * 10;
        _;
    }
}

contract Mutate0015b {
    uint256 input;
    uint256 internal;
    uint internal constant base = 10;
    modifier m() internal {
        uint256 local;
        input = input + local;
        return;
    }
}
