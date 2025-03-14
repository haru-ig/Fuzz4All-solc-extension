pragma solidity ^0.8.0;
contract Solidity6 {
    uint256 public a;
    uint256 public b;
    function myFunction() public {
        a = 1;
        b = a + b;
    }
}
