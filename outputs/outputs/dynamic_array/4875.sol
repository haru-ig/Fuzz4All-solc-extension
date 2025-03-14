pragma solidity ^0.8.0;
contract Test8 {
    uint32[4][] memoryArray;
    uint256 initialValue = 3;
    uint256 finalValue = 47;
    uint256[] memory array2;
    function ArrayUint32() public {
        uint256 i;
        require(memoryArray[0][0]==0,"");
        require(memoryArray[0][0]!=0,"");
        require(memoryArray[0][1]==0,"");
        require(memoryArray[0][1]!=0,"");
        require(memoryArray[0][2]==0,"");
        require(memoryArray[0][2]!=0,"");
        require(memoryArray[0][3]==0,"");
        require(memoryArray[0][3]!=0,"");
        require(initialValue>=3,"");
        require(initialValue!=memoryArray[0][0],"");
        require(finalValue>=47,"");
        require(finalValue!=memoryArray[0][3],"");
        for(i=0;i<4;i++){
            array2[i]=initialValue+finalValue-memoryArray[i][i];
        }
    }
}
