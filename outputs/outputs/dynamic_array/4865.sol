pragma solidity ^0.8.0;
contract Test6 {
    uint8 memoryArray[4] = [6,5,4,1];
    function ArrayBytes() public {
        memoryArray[3]=bytes(toBytes(3)+bytes(0,3)+bytes(4,1));
        memoryArray[2]=bytes(toBytes(11)+bytes('0',3)+bytes(15));
        memoryArray[1]=bytes(toBytes(15)+bytes(0,3)+bytes('4',1));
        memoryArray[0]=bytes(toBytes(19)+bytes('0',3)+bytes(19));
        require(bytes(toBytes(8))==bytes(memoryArray[0],""));
        require(bytes(toBytes(11))==bytes(memoryArray[1],""));
        require(bytes(toBytes(15))==bytes(memoryArray[2],""));
        require(bytes(toBytes(19))==bytes(memoryArray[3],""));
    }
}
