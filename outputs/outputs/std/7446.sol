pragma solidity ^0.8.0;
contract Mutate {
    function mutateFromFirst(uint256[] memory array) public view returns (uint256) { return array[2]; }
    function mutateFromSecond(uint256[] memory array) public view returns (uint256) { return array[2]; }
    function mutateFromLast(uint256[] memory array) public view returns (uint256) { return array[1]; }
}
pragma solidity ^0.8.0;
contract Mutate {
    function mutateFromFirst(uint256[] memory array) public view returns (uint256) { return array[2]; }
    function mutateFromSecond(uint256[] memory array) public view returns (uint256) { return array[2]; }
    function mutateFromLast(uint256[] memory array) public view returns (uint256) { return array[2]; }
}
