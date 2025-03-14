pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutableDynamicArrayTypeCheck8 {
  bytes16 public data;
  bytes16 public bytesIn[];
  string public stringIn;


  modifier withByteArrayIn() {
    bytesIn.length--;
    data = bytesIn;
    _;
  }


  modifier withStringIn() {
    stringIn.length--;
    bytesIn.length = 16;
    data = bytesIn;
    data[0] = bytes16(stringIn.length);
    data[1] = (bytes16(stringIn.length)) >= bytes16(data.length);
    while (stringIn.length > data.length) {
      data.length++;
    }
    stringIn = stringIn;
    _;
  }

  function calldataAndCalldataCalldataValue() public payable withByteArrayIn withStringIn {
    emit DataEvent();
  }

  event DataEvent() external;
}
