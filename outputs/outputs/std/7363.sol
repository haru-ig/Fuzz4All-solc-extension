pragma solidity ^0.8.0;
contract MyContract {
  uint8 private myArray[12];
}
contract Array {


  bool getArray() public view returns (uint8[] memory){
    return myArray;
  }

  bool getArrayLength() public view returns (uint8 length){
    return myArray.length;
  }

  bool setArray(uint8 length){
    myArray.length = length;
  }

  bool deleteArray(){
    myArray.length++;
  }


  bool addElement(uint8 index){
    myArray.length ++;
    myArray[myArray.length -1] = index;
  }


  bool removeElement(uint8 index){
    myArray.length--;
    return myArray.length;
  }

  bool sortArray() public  {
    uint8 x = myArray[0];
    for (uint8 i = 0; i < myArray.length; i++){
      if (x < myArray[i]){
        x = myArray[i];
      }
    }
    return x;
  }
}
contract Convert {


  uint8 getInteger(bytes memory data) public view returns (uint8){

    require(data.length == 4, "Data must be 4 bytes");

    uint8 value = bytes2uint(data);
    return value;
  }
}
contract Math {


  uint8 sqrt(uint8 num) public view returns (uint8){
    uint8 dividend = num + 1;
    uint8 divisor = 0;
    while (dividend > 0){
      uint8 q = dividend / divisor;
      dividend %= divisor;
      divisor *= 2;
      uint8 dividend2 = (dividend >> 1);
      uint8 count = 1 % divisor;
      while (count > 0 && dividend2 > 0){
        count ++;
        dividend2 >>= 1;
      }
    }
  }


  uint8 modularMul(uint8 numerator, uint8 denominator){
    uint8 dividend = numerator;
    uint8 divisor = denominator;
    uint8 quotient;
    while (dividend < divisor){
      quotient = dividend / divisor;
      dividend = quotient * divisor;
    }
    return quotient;
  }
}
contract Memory {

  address[] public myMemory;
  uint8 memoryStart = 0;


  address myAddressOfZeroValueArray() public view returns (address){
