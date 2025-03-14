pragma solidity ^0.8.0;
contract ArrayMutator is Mutator {
  mapping(uint8 => uint256) public values;
  uint256 public randomNumber;

  constructor() {
    randomNumber = (keccak256(abi.encodePacked(blockhash(block.number - 1), blockhash(block.number))) + (uint256(uint8(keccak256(abi.encodePacked(blockhash(block.number - 1), currentAddress())) + (uint256(uint8(keccak256(abi.encodePacked(blockhash(block.number - 1), currentAddress())))))));
    values = mapValues(randomNumber);
  }
  function mapValues(uint256 _number) public pure returns(uint256[]) {
    uint256[] memory _values = new uint256[](16);
    for(uint8 i = 0; i <= 15; i++) {
      _values[uint8(i)] = ((_number % 2 == 0)? 2 : 1);
      _number = (_number / 2);
    }
    return _values;
  }
  function add(uint256 _left, uint256 _right) public view returns(uint256) {
    return (_left + _right + initialValue);
  }
  function incrementValue() public view returns(uint256) {
    return add(values[15], 1);
  }
}
