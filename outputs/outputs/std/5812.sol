pragma solidity ^0.8.0;
contract Mutated13{
    function mutated8(uint[] memory a) public pure returns (uint) {
        uint[] memory b = new uint[](a.length);
        for (uint i=0;i<a.length; i++){
            b[i] = 13;
        }
        return 8;
    }
    function mutated7(uint[] memory a) public pure returns (uint) {
        return 7;
    }
}
contract Mutated14{
    function mutated13(uint[] memory a) public pure returns (uint) {
        uint[] memory b = new uint[](a.length);
        for (uint i=0;i<a.length-1; i++){
            b[i] = 13;
        }
        return 13;
    }
    function mutated12(uint[] memory a) public pure returns (uint) {
        return 16;
    }
}
