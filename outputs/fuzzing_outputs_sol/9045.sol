pragma solidity ^0.8.0;
contract FallbackContract {

  fallback () public payable {

    address self = msg.sender;

    assembly {

      mstore(keccak256(
        add(msg.data, 0x20),
        mload(add(self, 0x20)),
        0x400)
      )
    }
  }
}
contract Caller {


  function get_result() public returns (uint, uint) {
    return badCall(1 + 2, 0);
  }

  fallback() public payable {}


  function get_result_2() public returns (uint, uint) {
    return badCall(1 + 2, 0);
  }
}
