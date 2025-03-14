pragma solidity ^0.8.0;
contract Fallback {
  function transfer(address payable to, uint amount) public { }
}
contract MutatingFallback {
  function create() public pure {


    CreateAddress2.createAddress().call();
  }
  function fallback() public {
    address payable _sender = msg.sender;
    address payable _reciever;
    (uint _amount, bytes memory _data) = _sender.call(abi.encodeWithSelector(msg.data));
    Fallback(_reciever).transfer(_sender, _amount);
  }
}
