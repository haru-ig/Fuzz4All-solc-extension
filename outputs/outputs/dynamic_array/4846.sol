pragma solidity ^0.8.0;
contract Test3 {
    uint256[8] memoryArray;
    function ArrayUint256() public {
            memoryArray[0]=memoryArray[0]+1;
            memoryArray[1]=memoryArray[1]+3;
            memoryArray[2]=memoryArray[2]+7;
            memoryArray[3]=memoryArray[3]+1;
            memoryArray[4]=memoryArray[4]+8;
            memoryArray[5]=memoryArray[5]-5;
            memoryArray[6]=memoryArray[6]-3;
            memoryArray[7]=memoryArray[7]++;
    }
}

pragma solidity ^0.8.0;
contract Test4 {
    uint32[32] memory array;
    function ArrayUint3232() public {
    for(uint256 index=0;index<32;index+=8){
      uint32[8] memoryElement;
      uint256 length=8;
      for(uint256 i=1;i<=length;i++){
        memoryElement[i-1]=uint32(index)+uint32(i);
      }
      array[index]=memoryElement;
    }
    }
}

pragma solidity ^0.8.0;
contract Test4 {
    uint32[32] memory array;
    function ArrayUint32322() public {
    for(uint256 index=0;index<32;index+=8){
        uint8[32] memoryElement;
        uint256 length=8;
        for(uint256 i=1;i<=length;i++){
            memoryElement[index+i]=uint8(i);
        }
        array[index]=memoryElement;
    }
    }
}
