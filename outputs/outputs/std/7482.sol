pragma solidity ^0.8.0;
contract Mutate20 {
    function mutateArray(uint256[2][2] array) private view returns (uint256) { return array[0][0];}
    function mutate(uint256) private pure returns (uint256) { return 1; }
}
