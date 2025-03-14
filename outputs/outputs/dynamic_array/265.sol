pragma solidity ^0.8.0;
contract A8 {
    uint256 public x = 100;
    mapping(uint256 => string) public s;
    C8 public t = new C8(100);
    function f(uint256 i) public {
        s["f"] = "function1";
    }
}
