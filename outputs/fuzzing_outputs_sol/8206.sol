pragma solidity ^0.8.0;

contract SemanticSimilar {
  uint public a;
  constructor() public { a = 2 }

    function f() public { this; }
    function g() public { a = 3 }
    function h() public payable { g(); }
    function i() public {
      i;
    }
    function j() public payable { g(); }
}


address contractAddress;
(bool success, ) = contractAddress.call{value: 0x1}("");




emit Emitted();


abi.encodeWithSignature("fallback()").transfer(address(this), 10);
