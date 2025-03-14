pragma solidity ^0.8.0;
contract Mutate16 {
    function mutateFromFirst(address[2][2] memory array) private view returns (address) { return array[0][0];}
    function mutateFromSecond(address[2][2] memory array) private view returns (address) { return (array[1][0]);}
    function mutateFromThird(address[2][2] memory array) private view returns (address) { return (array[0][1]); }
    function mutateFromFourth(address[2][2] memory array) private view returns (address) { return array[1][1];}
    function main(uint256) private pure returns (uint256) { return 1; }
}
pragma solidity ^0.8.0;
contract Mutate17 {
    function mutate(uint256[2][2][42] memory array) public view returns (bool) { bool result = true; uint256[] memory array0; uint256 array0len0; (array0, array0len0) = convertTuple(array); for (uint i = 0; i < array0len0; i++) { uint256 result0; (result0) = mutateFromFirst(array0[i]); (array1) = createFromFirst(result0, result); (array0[i]) = array1; } return true;}
    function createFromFirst(uint256 result0, uint256 result) private pure returns (uint256 array1) {   }

    function main(uint256) private pure returns (uint256) { return 1; }
}
