pragma solidity ^0.8.0;
interface MinterInterface {
event Produced(address indexed owner, bool successful);
  function produce(
    uint _quantity,
    uint _amount,
    uint _cost,
    address _to
) public;
  function reap(uint _amount, bytes32 _proof) public returns (uint _value);
  function claim() public payable;
  function isReadyToSupply() public returns (bool);
}
