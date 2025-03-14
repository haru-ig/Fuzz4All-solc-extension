pragma solidity ^0.8.0;
contract PseudoRandom {
  function get_random() public returns(uint);
}
contract PseudoRandom32 is PseudoRandom {
  function get_random() public pure returns (uint r) {
    r = uint(keccak256(abi.encodePacked(uint(blockhash(1))));
  }
}
contract PseudoRandom56 is PseudoRandom {
  function get_random() public pure returns (uint r) {
    r = uint(keccak256(abi.encodePacked(uint(block.difficulty), uint(block.timestamp))));
  }
}
contract PseudoRandom70 is PseudoRandom {
  function get_random() public pure returns (uint r) {
    r = uint(keccak256(abi.encodePacked(blockhash(uint80(block.coinbase)))));
  }
}
