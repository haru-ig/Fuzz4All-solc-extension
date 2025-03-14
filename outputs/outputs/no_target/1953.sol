pragma solidity ^0.8.0;
contract Mutated {
    uint x;
    function f() public {
        if(x > 0)x = x + 1; else x = x + 1;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    uint x;
    function f() public {
        uint result = x * 3 - x * 4;
    }
}
