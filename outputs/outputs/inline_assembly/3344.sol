pragma solidity ^0.8.0;
contract CallMutablility {
  uint public flag;
  mapping (uint => uint) public foo;
  constructor () {
    uint _value = 17;
    bytes memory data = bytes(new bytes.constructor(4));
    flag = 1;
    foo[1] = 150;
    assembly {

      mstore(0x40, add(data, 0x02))

      mstore(0x44, add(data, 2))

      mstore(0x48, data)

      mstore(0x50, flag)

      move(calldataload(0x40), foo)

      if eqm(mload(0x44), add(foo, 1)) {
        flag += 1;
        flag += 1;
      }
    }
  }
  function write(uint x) {
    foo[x] += 1;
  }
  function zero ( uint x ) public {
    foo[x] += 1;
  }
}
