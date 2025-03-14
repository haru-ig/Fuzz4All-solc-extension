pragma solidity ^0.8.0;
contract Test4 {
    uint32[8] memoryArray;
    uint32 constant ArraySize=8;
    array(uint32)[10] memory arrayNested;
    function ArrayUint32() public {
        uint32 value= memoryArray[1];
        uint32 memorySize=(uint32(keccak256(abi.encodePacked("value"))))-(value);
        if(value!=memorySize){
            arrayNested[0]=arrayNested[0]+2;
            arrayNested[1]=arrayNested[1]-6;
            arrayNested[2]=arrayNested[2]*14;
            arrayNested[3]=arrayNested[3]*10;
            arrayNested[4]=arrayNested[4]*6;
            arrayNested[5]=arrayNested[5]*6;
            arrayNested[6]=arrayNested[6]*21;
            arrayNested[7]=arrayNested[7]*34;
            arrayNested[8]=arrayNested[8]*5;
            arrayNested[9]=arrayNested[9]*18;
            arrayNested[10]=arrayNested[10]*6;

            callArrayUint32(memoryArray);
        }

    }
    function callArrayUint32(uint32[10][8] calldata memoryArray) public {
        uint32 value= memoryArray[1];
        uint32 memorySize=(uint32(keccak256(abi.encodePacked("value"))))-(value);
        if(value!=memorySize){
            arrayNested[0]=arrayNested[0]+2;
            arrayNested[1]=arrayNested[1]-6;
            arrayNested[2]=arrayNested[2]*14;
            arrayNested[3]=arrayNested[3]*10;
            arrayNested[4]=arrayNested[4]*6;
            arrayNested[5]=arrayNested[5]*6;
            arrayNested[6]=arrayNested[6]*21;
            arrayNested[7]=arrayNested
