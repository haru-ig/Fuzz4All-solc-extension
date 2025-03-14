pragma solidity ^0.8.0;

contract C {
    uint z;
    uint a;

    constructor() public {
        z = 3;
        a = 5;
    }

    function mutant() public {
        z = 4;
        a = 1;
    }
}
contract C2 {
    uint public g;
    constructor() public {
        g = 1;
    }

    function mutant() public {
        g +=1;
    }
}
