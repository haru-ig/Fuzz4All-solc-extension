pragma solidity ^0.8.0;
contract D {
  uint public a;
  uint public b;
  uint public c;
  uint public d;
  function M() public {
    assembly {
      d:=a,c:=a,b:=a
      c:=a,a:=c
      a:=c
      c:=a,a:=b
      a:=a,b:=d
      a:=a,b:=c
      c:=a,a:=b
      a:=a,b:=d
      a:=a,b:=c
      c:=a,a:=b
      a:=a,b:=d
      a:=a,b:=c
      c:=a,a:=b
      a:=a,b:=d
      a:=a,b:=c
      c:=a,a:=b
      a:=a,b:=d
      a:=a,b:=c
      c:=a,a:=b
      a:=a,b:=d
      a:=a,b:=c
      c:=a,a:=b
      a:=a,b:=d
      a:=a,b:=c
      c:=a,a:=b
      a:=a,b:=d
      a:=a,b:=c
      c:=a,a:=b
      a:=a,b:=d
      a:=a,b:=c
      c:=a,a:=b
      a:=a,b:=d
    }
  }
}


pragma solidity ^0.8.9;
contract PermAddr {
  mapping (address => uint256)  public addrToPermAddress;

  constructor () {
    addrToPermAddress[msg.sender]=1;
  }

  function isPerm(address addr) public view returns (bool) {
    return addrToPermAddress[addr] > 0;
  }
}

pragma solidity ^0.8.9;
contract PermContract {
  address public addr;
  address[]  public _addrs;

  constructor () {
   addr = msg.sender;
    _addrs.push(addr);
   }

  function isPerm(address addr) public view returns (bool) {
    return addrToPermAddress[addr] > 0 && addr!=addrToPermAddress[msg.sender];
  }
