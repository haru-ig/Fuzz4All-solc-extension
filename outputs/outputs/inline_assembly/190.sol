pragma solidity ^0.8.0;
contract E6I {
  uint16 x = 0xabcd;
  mapping (address => int) map;


  address owner;
  function E6I(address _owner) public {
    owner = _owner;
  }
  function deposit() public {
    x = 0xbcd;
  }
  function g(address x) public {
    map[x] = 6;
  }
  function test(address x) public {

    map[0xaabbccddeeff] = 7;
    map[x] = 8;
    map[bytes1(map[x])] = 9;
    map[bytes2(map[x])] = 0xff;
  }
  fallback() external payable {
    int y = 0xbcd;
    map[emitSig(y)] = 10 + payable(_msgSender());
  }
  function emitSig(int x) public pure returns(address sig) {
    address payable addr = payable(keccak256(abi.encodePacked(x)));
    sig = addr.send(new bytes(0));
  }

}
