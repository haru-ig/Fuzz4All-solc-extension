pragma solidity ^0.8.0;
contract L73 {
    uint x;
    assembly {
        define inline_assembly {
            x := x + 3
        }
    }
    function sneaky() public {
        for(uint i = 1; i > 5; i++) {
            x = x + 2;
        }
    }
}
