pragma solidity ^0.8.0;
contract Test{
    function mod() modifies (address[] storage values){ values[0] = 0x0; }
    function _mod(uint value, dynamic uint[] memory values) returns (uint) override modifies (values) { return(value); }
}

contract TestMod{
    using Test for uint[];
    function test() public {uint[] memory values; values.push(1); mod();   test2(values); values.push(1); dynamic uint[] memory values2; values2[0] = mod2(values); test6(values2); }

    function mod() modifies (uint[] values) {
        uint[] memory oldValues; oldValues = values;
        values[0] = 0x111222330444455566667778888988889F0000;
        uint newValue = Test.isTrue(oldValues[0]);
    }

    function mod2(uint[] memory values) {
        uint oldValue = values[0];
        values[0] = 0x111222330444455566667778888988889F0000;
        return(oldValue);
    }

    function test2(uint[] memory values) { test(Test.isTrue(values[0])); }
    function test6(uint[] memory values6) public { test(isTrue(values6[0]), values6[1], values6[2]); }
}
