pragma solidity ^0.8.0;
contract BirthdayMutator is Mutators {
  mapping(uint => uint) private mutatorSummer2018;

  function increment() public {
    mutatorSummer2018[uint(this) + 13]++;
  }
}
contract Caller {
  function call(address _addr, uint _count) public returns(uint[] memory) {_addr.call(abi.encode(_count), 0, 0)}
}
contract CallerMutators {
  function call(uint _count) public returns(uint[] memory) {Caller().call(abi.encode(uint(this) + 3), _count, 0)}
}
contract Mutator {
  function mutators() public view returns(BirthdayMutator storage);
  function mutatorSum(uint _count) public view returns(uint);
}
