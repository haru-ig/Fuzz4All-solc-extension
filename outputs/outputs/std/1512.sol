pragma solidity ^0.8.0;
contract Mutated {
constructor() public {
}
function myInit(uint8 test) public { }
}
contract Mutated {
    function myInit(uint8 test) public {
        test = 51;
    }
}
