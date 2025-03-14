pragma solidity ^0.8.0;
contract Comp2
{
    uint a = 0;
    uint public a ;
    constructor(uint _a){
        a = _a;
    }
    function increamse() public {
        ++a;
    }
    function decreamse() public {
       --a;
    }
}
