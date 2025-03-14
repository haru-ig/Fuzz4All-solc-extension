pragma solidity ^0.8.0;
contract Mutator4
{
    uint public A;
    uint public constant A = 6;
    function setA(uint _A) public {
        A = _A;
    }
}
