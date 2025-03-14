pragma solidity ^0.8.0;
contract Mutate5A {
    function mutateFromFirst(uint256[2][2] memory array) public view returns (uint256) { return array[0][0]; }
    function mutateFromSecond(uint256[2][2] memory array) public view returns (uint256) { return  array[0][1];}
    function mutateFromThird(uint256[2][2] memory array) public view returns (uint256) { return  array[1][0]; }
    function mutateFromFourth(uint256[2][2] memory array) public view returns (uint256) { return array[1][1];}
    function secondArrayIn(uint256[2][2] memory array, uint256 index) public view returns (bool) { return array[1][index]; }
}

pragma solidity ^0.8.0;
contract Mutate6 {
    function mutateFromFirst(uint256[2][2][2] memory array) public view returns (uint256) { return array[0][0][0]; }
    function mutateFromSecond(uint256[2][2][2] memory array) public view returns (uint256) { return array[0][1][0]; }
    function mutateFromThird(uint256[2][2][2] memory array) public view returns (uint256) { return  array[1][1][1];}
    function mutateFromFourth(uint256[2][2][2] memory array) public view returns (uint256) { return array[1][0][1]; }
    function thirdArrayIn(uint256[2][2][2] memory array, uint256 index, uint256 subIndex) public view returns (bool) { return array[1][index][subIndex]; }
}
