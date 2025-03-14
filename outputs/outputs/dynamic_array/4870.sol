pragma solidity ^0.8.0;
contract Test7 {
    bytes32[6] memoryBytes;
    function ArrayBytes32() public {
        memoryBytes[0]=keccak256("test");
        memoryBytes[1]=keccak256(abi.encodePacked("another test"));
        memoryBytes[2]=keccak256(abi.encodePacked(memoryIndex(),""));
        memoryBytes[3]=keccak256(abi.encodePacked("test ",bytes32(3)));
        memoryBytes[4]="";
        memoryBytes[5]=keccak256(abi.encodePacked("another test ",bytes32(3)));
        require(memoryBytes[5] == keccak256(abi.encodePacked("another test ",keccak256("test"))),"");
        require(memoryBytes[3] == keccak256(abi.encodePacked(keccak256("test "),"")),"");
        require(memoryBytes[2] == keccak256(abi.encodePacked(memoryIndex(),"")),"");
        require(memoryBytes[1] == keccak256(abi.encodePacked("another test ")),"");
        require(memoryBytes[0] == keccak256(abi.encodePacked(keccak256("test "),bytes32(3)))),"");
    }
    function memoryIndex() internal pure  returns(uint256){

    }
}
