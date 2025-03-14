pragma solidity ^0.8.0;
contract SendEtherCaller {
  address payable _address;
  constructor(address payable _address) {
  }
  function transferFrom(
    address _from,
    address _to,
    uint _amount
  ) external payable {
    require(_amount == msg.value || _amount == msg.value - msg.data.length);
    bytes memory emptyData = bytes(0);
    uint16 result = _to.send(bytes16(0xff),"(transfer)",emptyData);
    if (result == 0) {
      sendEtherCaller(_from,_to,_amount);
    } else {
      revert();
    }
  }
  fallback() external payable {}
}
