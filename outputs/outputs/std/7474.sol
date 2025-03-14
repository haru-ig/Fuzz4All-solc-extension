pragma solidity ^0.8.0;
contract Mutate19 {
    constructor() public {}
    function mutateFromFirst(uint256[2][2] memory array) public pure returns (uint256) { return array[0][0];}
    function mutateFromSecond(uint256[2][2] memory array) public pure returns (uint256) { return array[1][0];}
}
contract Mutate21 {
    constructor() public {}
    function mutateFromFirst(uint256[2][2] memory array) public pure returns (uint256) { return array[0][0];}
    function mutateFromSecond(uint256[2][2] memory array) public pure returns (uint256) { return (array[1][0]); }
}
contract Mutate22 {
    constructor() public {}
    function mutateFromFirst(uint256[2][2] memory array) public pure returns (uint256) { return (array[0][0]); }
    function mutateFromSecond(uint256[2][2] memory array) public pure returns (uint256) { return  array[1][0]; }
}
contract Mutate23 {
    constructor() public {}
    function mutateFromFirst(uint256[2][2] memory array) public pure returns (uint256) { return (array[0][1]); }
    function mutateFromSecond(uint256[2][2] memory array) public pure returns (uint256) { return (array[1][1]); }
}
contract Mut
