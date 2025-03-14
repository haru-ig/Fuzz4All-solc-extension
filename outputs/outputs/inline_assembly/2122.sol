pragma solidity ^0.8.0;
contract SameDifferent
{
    function getAnother() public pure returns(uint) {
        return 1;
    }
}
contract SameDifferent2
{
    function getAorB() public pure returns(uint) {
        return 99;
    }
}
