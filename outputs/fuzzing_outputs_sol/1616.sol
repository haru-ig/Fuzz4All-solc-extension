pragma solidity ^0.8.0;
contract CallReceiver {
  function f(uint256 value) public pure returns(bool) {
    return value > 0;
  }
  function get() public view returns(uint256) {
    return 1357;
  }
  receive() external {

  }
}
function main() {
  CallReceiver receiver;
  unchecked{receiver.get();}
  try{receiver.get();} catch(bytes memory e){  }
}
