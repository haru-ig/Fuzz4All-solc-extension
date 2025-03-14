pragma solidity ^0.8.0;
contract HelloWorld {
  uint a;
  function hey() public view returns(uint) {
    return a;}}

pragma solidity ^0.8.0;
contract HelloWorld {
  uint public a;

  function a() public { a = 10; }
  function hey() public view returns(uint) {

    return a;}}

pragma solidity ^0.8.0;
contract HelloWorld {

  modifier a() { a = 237; return; }
  uint public a = 237;
  uint public b;
  uint public c;
  function hey() public {
    b = 238;
    c = a + b;
  }

  modifier b { b = 358; return; }
  function boo() public {
    c = a + b;
  }}
pragma solidity ^0.8.0;
