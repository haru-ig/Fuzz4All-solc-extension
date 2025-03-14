pragma solidity ^0.8.0;
contract ModifiedArray2{

  uint private xBytes = 1255 bytes;
  uint[7] private test2 = [123423, 1656123, 254995, 93655, 752893, 1056, 8399];

  function Modify(
    uint[7] memory x,
    uint newValue,
    uint[2] memory y
  ) public pure {
      x[y[0] + newValue] *= newValue;
  }

  function ModifyBytes(
    bytes[xBytes] memory x,
    string memory newValue,
    string memory y
  ) public pure {
      x[yBytes + newValue.length()] = bytesToBytes3(newValue);
  }
}
