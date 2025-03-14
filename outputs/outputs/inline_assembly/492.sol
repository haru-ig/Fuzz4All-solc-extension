pragma solidity ^0.8.0;
contract SemanticallyEquivalenty75 {
    constructor () public {
      assembly {
        log := mload(0x00)
        log := log.add(0x20)
        log := mload(mload(log))
        log := mload(mload(mload(mload(log))))
        log := mload(mload(mload(mload(mload(mload(log))))))
        log := mload(mload(mload(mload(mload(mload(mload(mload(log))))))))
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
        log := log.add(0x20)
      }
      emit Log((msg.sender), "", "");
    }
    event Log(address value1, string value2, string value3);
}
