pragma solidity ^0.8.0;
contract Mutated
{
  Equivalent _Equivalent = Equivalent(0x111111111111111111111111111111111111111);
  Address payable _caller;
  bytes256 _name;
  address _addr;
  address _fallback;

  function modifiedSendEther(uint x, address addr) public { _caller.send(x); contract(_addr).transfer(_Equivalent.modifiedSendEther(x, msg.sender)); msg.sender.transfer(addr); }

  constructor(bytes memory _name, address _addr) public
  {
    _name = bytes(_name);
    _addr = _addr;
  }

  function setFallback(address _a) constant returns (bool)
  {
    _fallback = _a;
    return true;
  }

  function() external payable
  {
    if (!address(_fallback).isContract()) revert();
    assembly {
      let result := delegatecall(gas, mload(0x40), add(0x20, mload(0x40)), _addr, 0x20, add(0x40, mload(0x40)), _name, 0x0, add(0x40, mload(0x40)), 0x0, 0x0, 0x0)
      switch result
      case 0 { _fallback.return(0) }
      default { revert(0, returndata(0), 0) }
    }
  }
}
