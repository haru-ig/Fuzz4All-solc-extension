pragma solidity ^0.8.0;
contract ContractCaller {
  address _caller;
  function get() public view returns (address) { return _caller; }
  function pay() public payable returns (address) { _caller = msg.sender; return address(this); }
}
contract Caller2 {
  address payable _caller;
  function get() public view returns (address) { return address(_caller); }
  function pay() public payable returns (address) { _caller = payable(msg.sender); return msg.sender; }
}
contract ContractCaller2 {
  address payable _caller;
  constructor() { _caller = msg.sender; }
  function get() public view returns (address) { return address(_caller); }
  function pay() public payable returns (address) { return address(_caller); }
}
contract FallbackCaller {
  uint256 callcounter = 0;
  function get() public view returns (uint256) { return ++callcounter; }
  function pay() public payable returns (uint256) { return (uint256)(msg.sender); }
}
contract FallbackCaller2 {
  uint256 callcounter = 0;
  function get() public view returns (uint256) { return ++callcounter; }
  function pay() public payable returns (uint256) { return ++callcounter; }
}
contract Caller5 {
  uint256 a;
  constructor() { a = 10; }
  function pay() public payable { a += 10; }
  function _fallback() payable public { a += msg.value; }
  function get() public view returns (uint256) { return a; }
}
contract Caller6 {
  address payable _caller;
  constructor() { _caller = payable(msg.sender); }
  function pay() public payable returns (uint256) { return address(_caller); }
  function get() public view returns (address) { return address(_caller); }
}
contract ContractCall4 {
  uint256 a;
  constructor() { a = 10; }
  function get() public view returns (uint256) {
