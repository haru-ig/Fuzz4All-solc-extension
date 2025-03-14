pragma solidity ^0.8.0;
contract SemanticsEquivalence172 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    function run() public {
        data.x1 = 25;
        data.x2 = 1 + data.x1;
        data.x3 = data.x1 + data.x2;
        data.x3 = 5;
        Extra internal extra;
        extra.x1 = 25;
        extra.x2 = 1 + extra.x1;
        extra.x3 = extra.x1 + extra.x2;
        extra.x3 = 5;
    }
}
