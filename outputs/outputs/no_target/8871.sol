pragma solidity ^0.8.0;
contract MutatedSemanticsAreAffected95_ {
    struct C
    { string x; C(uint y); uint z; function f() view returns (uint, array memory, mapping(uint => uint4)) {} uint3}
    function test5 (uint _value96) public {
        C _tmp;
        _tmp.z = 2 ** 223;
        _tmp.f().z += _value96;
    }
}
