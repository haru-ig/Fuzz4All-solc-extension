pragma solidity ^0.8.0;
contract ConvertToUnsigned {
  uint8[7] numbers;
  uint256 sum;
  function convertToUnsigned() public {
    uint8[7] memory myNumberArray = [1, 3, 100, 20985, 874923, 40458745, 0, 3000000000000];
    for(uint8 i = 0; i < 7; i++){
      if (myNumberArray[i]!= 0 && myNumberArray[i] < type(uint8).maximum){
        uint256 x = myNumberArray[i];
        sum += x;
      }
      if(i == 2)
        numbers[2] = 4;
      else if(i == 4)
        numbers[4] = 200000;
      else
        numbers[0] = 0;
    }
  }
  function sumOfNumbers() public view returns(uint256) {
    return sum;
  }
}
