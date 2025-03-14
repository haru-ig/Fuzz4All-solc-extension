pragma solidity ^0.8.0;
contract A {
  IToken token;
  function () external payable { }
  function setToken(IToken _token) external;
}
contract C is A {
  constructor (IToken token) public {
    setToken(token);
  }
}
