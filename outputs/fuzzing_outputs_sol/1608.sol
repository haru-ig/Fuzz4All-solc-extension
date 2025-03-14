pragma solidity ^0.8.0;
contract Caller {
  function fallback() public payable {
    callContract(address(this));
  }
  function callContract(address _contract) public {
    uint _balance;
    assembly {
      _balance := mload(0x90)
    }
    assert(_balance >= 1 ether && "Balance is not enough");
    _contract.transfer(_balance);
  }
}
