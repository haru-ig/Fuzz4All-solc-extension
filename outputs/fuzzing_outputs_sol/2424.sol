pragma solidity ^0.8.0;
contract Caller23 {
  function call23() public view returns (string memory) {
    return "abc";
  }
}
contract Caller13 {
  Caller22 foo;
  constructor() public {
    foo = new Caller22();
  }
  function call13() public view returns (string memory) {
    return string(abi.encodePacked(address(foo), Caller2.call23()));
  }
}


contract Caller22 {
  function call22() public payable returns (string memory) {
    return "abc";
  }
}
contract Caller223 {
  function call223() public payable returns (string memory) {
    return "abc";
  }
}
