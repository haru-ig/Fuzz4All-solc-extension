pragma solidity ^0.8.0;
contract Test7 {
    bytes32 public foobar;
    mapping(bytes32 => bytes) public map;
    constructor(uint256 x) public{
         foobar = keccak256("Hello");
         map["foobar"] = x.toString();
    }
    function f(uint256 x) public pure view returns (bytes memory) {
      bytes memory bar = new bytes(x);
      return bar;
    }
    function g(uint256 x) public pure view returns (bytes memory) {
      bytes memory bar = map["foobar"];
      return bar;
    }
    function g(uint256 x) public pure view returns (uint) {

      uint bar = 0;
      if (map["foobar"].length > 0) {
        bar = uint(map["foobar"]);
        bar = bar.length;
      }
      return bar;
    }
    function g() public pure view returns (uint256 x) {
      return (uint)((map["foobar"]).length * 2);
    }
}
