pragma solidity ^0.8.0;
contract C1 {
    C2 public c;
    function test() public payable {
        c.multiply(1,2);
    }
}
