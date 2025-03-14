pragma solidity ^0.8.0;
contract ConstantAccessBlock02 {
    uint constant constantA = 1;
    uint constant constantB = 2;
    function test() public pure {
        uint _var1;
        uint _var2;
        assembly {
            _var1 := constantA
            _var2 := constantB
        }
        require(_var1 == constantA);
        require(_var2 == constantB);
    }
}
