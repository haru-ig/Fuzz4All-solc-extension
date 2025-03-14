pragma solidity ^0.8.0;
contract Test14 {
    struct Struct {
                Struct[] _fields;
    }
    function test1(Struct[] memory s1) public {
        s1[0]._fields.push(Struct({}));
    }
    function test2(Struct[] memory [102] memory s2) public {
        for (uint256 i = 0; i < 102; i++) {
            s2[i]._fields.push(Struct(1,_field=0));
        }
    }
}
