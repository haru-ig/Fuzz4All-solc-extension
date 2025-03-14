pragma solidity ^0.8.0;
contract StringSize {

  uint256 arrLen;
  string[] public arr;
  constructor() public {
    arrLen = 10;
    for (uint256 i = 0; i< arrLen; i++){
      arr.length = i;
      arr[i] = "World".concat(uint256ToString(i+1));
    }
  }

  function printTheArray() public {
    for (uint256 i = 0; i< arrLen; i++){
        print("The array[", i, "] is '", arr[i], "'");
      }
  }

  function appendTheArray(uint256 val) public {
    arr.length = arrLen;
    arr[arrLen-1] = uint256ToString(val);
    arrLen =  arrLen + 1;
  }

  function lengthOfTheArray() public view returns(uint256) {
    return arrLen;
  }

  function uint256ToString(uint256 num) public pure returns(string memory) {
    uint8 digits = 0;
    while (num!= 0){
      digits += 1;
      num /= 10;
    }
    bytes memory buffer = new bytes(digits);
    uint8 startIndex = buffer.length;
    while(num!= 0){
      buffer[--startIndex] = byte(uint8('0' + uint256ToString(num % 10)));
      num /= 10;
    }
    bytes memory alphabet = "123456789abcdefghijklmnopqrstuvwxyz";
    uint8 j = startIndex;
    for (; j > 0; j--){
      buffer[j] = alphabet[alphabet.length-buffer[j]];
    }
    return string(buffer);
  }
}
