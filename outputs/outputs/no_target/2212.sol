pragma solidity ^0.8.0;
contract Modifications2_SEM10 {
    uint256 public x;
    function f() public {
        require(x + 1 >= 1 + x);
    }
}
