pragma solidity ^0.8.0;
contract Mutated {
  uint public constant MAX_WIDTH = 999;

}

pragma solidity ^0.8.0;
contract BytesArray {

  struct Node {
    bytes value;
  }
  uint constant public WORD_SIZE = 32;
  uint constant public MAX_WIDTH = 64;
  uint constant private LENGTH = (MAX_WIDTH * WORD_SIZE) / 8;

  uint[] private bytes_array;

  mapping (address => Node[]) private nodes;
  uint max_index;

  function addFirst(uint256 value) public {
    bytes memory a = bytes.of(value.toWord());
    bytes_array.push(uint2560.from(a[31]), uint2560.from(a[30]), a[29], a[28], a[27], a[26], a[25], a[24], a[23], a[22], a[21], a[20], a[19], a[18], a[17], a[16], a[15], a[14], a[13], a[12], a[11], a[10], a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0], bytes.one(6));
  }

  function doMax() public {
    nodes['0'].push(uint2560.zero());
  }

  function doMin() public {
    uint[] memory num = new uint[](6);
    bytes_array.push(num);
  }

  function doDiv() public {
    uint n1 = bytes_array[2];
    uint n2 = bytes_array[3];
    if(n2 == 0)
      revert();

    uint result = n1 * (n2 + 2)**32;
    bytes memory b = bytes.of(result.toWord());
    bytes_array.push(uint2560.from(b[31]), uint2560.from(b[30]), b[29], b[28], b[27], b[26], b[25], b[24], b[23], b[22], b[21], b[20], b[19], b[18], b[17], b[16], b[15], b[14], b[13], b[12], b[11], b[10], b[9], b[8],
