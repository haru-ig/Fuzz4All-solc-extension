pragma solidity ^0.8.0;
contract Caller {
  uint256 a;
  constructor(uint256 _a) { a = _a; }
  function _fallback() public payable returns (uint) {
    return a;
  }
}
contract ContractCall {
  uint256 a;
  constructor() { a = 10; }
  function get() public view returns (uint256) { return a; }
}
contract Bogus {
    string public msg;
    constructor(string memory _message) public { msg = _message; }
}
contract FallbackContract {
    function _fallback() public payable {}
}
contract Caller {
  function pay() public payable returns (address) {
    return(address(new Bogus("Goodbye!")));
  }
}
