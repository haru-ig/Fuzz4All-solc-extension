pragma solidity ^0.8.0;
contract C {
    uint x = 10000000000000000000000000000000000000000;
    function mutatedByContract(uint y) public {
        x = y+1;
    }
    function mutatedByLibrary(uint y) public {
        x = x+y;
    }
}

contract C {
}
