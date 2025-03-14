pragma solidity ^0.8.0;
contract Caller {
  function call() public returns (string memory) {
    bytes memory data = call2();
    return bytesToString(data);
  contract Caller22 is Caller2 {
    string call constant call2 = call2();
    function bytesToString ( bytes memory data) internal pure returns (string memory) {
        return string(data);
    }
  }
}
