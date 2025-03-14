pragma solidity ^0.8.0;
contract Mutate3{
    function mutateFromFirst(uint[3] memory, uint[3] memory) public view returns (uint[3] memory) { emit Debug(); return uint[3] memory(0, 0, 0); }
    function mutateFromSecond(uint[3] memory[6], uint[3] memory) public view returns (uint[3] memory) { emit Debug(); return uint[3](0, 0, 0); }
    function mutateFromLast(uint[3][3] memory array, uint[3] memory) public pure returns (uint[3][3] memory) { emit Debug(); return uint[3][3][3](uint[3][3](0, 0, 0),uint[3][3](0, 0, 0),uint[3][3](0, 0, 0)); }
}
