pragma solidity ^0.8.0;
contract Mutability7 {
  uint public constant ZERO = 0;
  uint8 internal constant LEAF_NUM = 255;
  uint internal constant DATA_SIZE = 58;
  uint internal constant ROWS = 256;
  address public constant owner = 0xD525E6040043fF97e2bF84A6985e74D3c43Ff093;
  string public description;
  uint public version;
  uint public height;
  uint public epoch;
  uint public period;
  uint16[257] public leaves;
  uint[257] public data;
  uint[257] public hashes;
  mapping (uint => uint256) internal nonces;
  constructor () public {
  }
  function createSnapshot() public {
    description = "This snapshot is created by the solidity compiler";
    version = 1;
    height = 15821907167359;
    epoch = 2;
    period = 10995116277760;

    for(uint i = 0; i < LEAF_NUM; i++) {
      if(i == 0) {
        leaves[i] = ROWS * (i + 1);
        data[i] = ROWS * (i + 1);
        hashes[i] = keccak256(abi.encodePacked(keccak256(abi.encodePacked("This is the hash for leaf:", i))))) * 2;
      } else {
        leaves[i] = ROWS + 1;
        for(uint row = 0; row < leaves[i]; row++) {
          uint value = uint( uint160(address(this)) << 80 | uint256(uint160(address(this)) << 88 | uint160(address(this)) << 81) << 70 | (uint(uint80(i)) + row) << 51);
          leaves[i] = 0;
          data[i] = uint256( data[i] | value | 2**(127 - (i + 1)) );
        }
        data[i] = uint256( uint160(address(this)) << 80 | uint256(uint160(address(this)) << 8
