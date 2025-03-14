pragma solidity ^0.8.0;
contract Comp2
{
    constructor(uint _a) {
    }
    function increamse(uint _increase) public {
        assembly {
            a = add(a,_increase)
        }
    }
    function decreamse(uint _decrease) public {
        assembly {
            a = sub(a,_decrease)
        }
    }
}
