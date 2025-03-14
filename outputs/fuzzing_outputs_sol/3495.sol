pragma solidity ^0.8.0;
interface MutatedStorage6 {
    uint public num;
    function modify(uint _number) public;
    function getNumber() public view returns (uint);
}
