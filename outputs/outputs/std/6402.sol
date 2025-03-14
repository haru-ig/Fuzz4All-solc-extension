pragma solidity ^0.8.0;
contract Convert {
  function fromString(bytes memory _string) public pure returns (uint256)
  {
    bytes memory digits = "0123456789";
    uint256 i = bytes(_string).length;
    while (i > 0)
    {
      uint256 digit = uint256(uint8(bytes(_string)[i-1]));
      uint256 digitvalue = digits[i-1] - uint256('0');
      uint256 result = digit*Math.pow(10,digitvalue);
      i = i -1;
    }
    return result;
  }
}
