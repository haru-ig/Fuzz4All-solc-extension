pragma solidity ^0.8.0;
contract Test40{
    uint[2] a;
    uint i;

    struct Struct {
        uint s;
    }

    Struct[] public dynArr;

    function testBool() public {
        boolBool = true;
        a[1] = "true is also a valid boolean type";
        dynArr[0].s = 20;
    }
}
