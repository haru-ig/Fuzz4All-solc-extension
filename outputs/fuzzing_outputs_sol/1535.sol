pragma solidity ^0.8.0;
contract PirateAttack {
  address public piper;
  bytes32 public target = keccak256(abi.encodePacked(piper, tx.origin));
  address payable private _attacker;

  function PirateAttack(address payable piper_) public {
    require(piper_!= address(0), "invalid address");
    piper = piper_;
  }

  function attack() public payable {
    uint gasLeft = (address(this).balance - msg.value) - msg.gas;
    while (gasLeft > 0) {
      address attackee;
      if (keccak256("\x19Ethereum Signed Message:\n32") <= keccak256(abi.encode(msg.data))) {

        (,,,) = abi.decode(msg.data, (address payable, uint, uint));
        if (address(0x7A9DDadAB81c149760D7c4C82c9e3574098e8632).balance + msg.value + msg.gas < 0x100000) {
          target = keccak256(abi.encodePacked("\x00000000000000000000000000000000000000000000000000000000000", target));
          contractFallback(0, 0, 0, 1);
          break;
        }
        if (address(0xCE94739406d261294aBB9Fca8755B5428e378Eb0).balance + msg.value + msg.gas < 0x100000) {
          target = keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32\x00", target));
          contractFallback(0, 0, 0, 1);
          break;
        }
      } else {

        (, address attackee_,,) = abi.decode(msg.data, (address, address, uint));



        if (address(0x8330C08177A6A0C78F81e98A4f2164b8711694f8).balance + msg.value + msg.gas < 0x100000) {
          target = keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32\x00\x00", target, attackee
