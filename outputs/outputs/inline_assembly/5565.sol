pragma solidity ^0.8.0;
contract ConstantAccessBlock05 {
    uint constant constantA = 1;
    uint constant constantB = 1;
    function test() public pure {
        uint _var1;
        uint _var2;
        assembly {
            _var1 := constantA
            _var2 := constantB
            _var1 := _var1 + 1
            _var2 := _var2 - 1
        }
        require(_var1 == constantA + 1);
        require(_var2 == constantB - 1);
    }
}
