pragma solidity ^0.8.0;
struct Mutate16 {
    uint32 x;
}
contract Mutate17 {
    uint32 private x;
    function () public {
        x = x + 1;
        x = x + 2;
        x = x + 3;
        x = x + 4;
        x = x + 5;
        x = x + 6;
        x = x + 7;
        x = x + 8;
        x = x + 9;
    }
    function mutatedFunction() public {
        x = x - 1;
        x = x - 1;
        x = x - 1;
        x = x - 1;
        x = x - 1;
        x = x - 1;
        x = x - 1;
        x = x - 1;
        x = x - 1;
        x = x + 1;
    }
}
