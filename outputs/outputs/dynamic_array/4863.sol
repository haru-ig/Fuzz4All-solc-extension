pragma solidity ^0.8.0;
contract Test7 {
    uint40[] memoryArray;
    uint8 memoryArray2[] = [
        [uint8(0);uint8(1)];
        [uint8(2);uint8(3)],
        [uint8(4);uint8(5)],
        [uint8(6);uint8(7)]
    ];
    uint256[] memoryArray3 [] = [[uint256(0)];uint256[2],[uint256(4);uint256(5)],];
    uint32[2] memoryArray4 =[3,8];
    function ArrayUint32(uint98 a) public {
        memoryArray4[2]=memoryArray4[2]+uint40(memoryArray4[1])*uint40(uint8(a));
        deleteMemoryArray(uint40(uint8(a)),3);
    }
    function deleteMemoryArray(uint40 a) public {
        delete memoryArray[0];
        delete memoryArray[0];
        delete memoryArray2[0];
    }
}


pragma solidity ^0.8.0;
contract Test8{
    uint256[] public array;
    uint256 public arrayLength;
    uint256 public arraySize;
    constructor() public {
        arrayLength=array[0];
        arraySize=memory.length*3/4;
    }
    function checkMem() public {
        bytes memory _buf=new bytes(array.length*2);
        uint256 _len=2*sizeof(uint256);
        bytes memory _bufB=new bytes(_len*arrayLength);
        bytes memory _bufBA=new bytes(array.length*2);
        for(uint256 i=0;i<array.length;i++){
            assembly {_bufBA.add(0,array[i])}
        }
        for(uint256 i=0;i<array.length;i++){
            uint256 _val;
            assembly {_val := mload(add(_bufB,_len*i))}
            array[i]=_val;
        }
        bytes memory _
