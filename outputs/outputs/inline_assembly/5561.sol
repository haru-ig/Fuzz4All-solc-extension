pragma solidity ^0.8.0;
contract ConstantAccessBlock04 {
    uint constant constantA = 0;
    uint constant constantB = 0;
    uint x;
    uint y;
    function test() public pure {
        uint _var1;
        uint _var2;
        assembly {
            _var1 := constantA
            _var2 := constantB
        }
        x = _var2;
        y = x;
    }
}
