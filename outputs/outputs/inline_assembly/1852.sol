pragma solidity ^0.8.0;
contract Example {
    uint256 internal x;
    uint256 public constant y = 1;
    modifier check {
        x += 1;
        if (x <= 11) {
            revert();
        }
        _;
    }
    {
        check;
    }
}
