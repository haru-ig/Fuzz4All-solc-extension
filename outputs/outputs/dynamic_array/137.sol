pragma solidity ^0.8.0;
contract C {
    function a(uint256 d0, uint256 d1) public view returns (uint256,uint256,uint256) {
        uint256[] memory memoryarray = new uint256[](3);
        memoryarray[0] = d0;
        memoryarray[2] = d1 + d0;
        memory[0] = d0;
        memory[1] = d1 + d0;
        memory[2] = memoryarray[2] - memoryarray[0];
        emit a(memoryarray[0],memoryarray[1],memoryarray[2]);
        return (memoryarray[0],memoryarray[1],memoryarray[2]);
    }
}
