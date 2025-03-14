pragma solidity ^0.8.0;
contract ConstantAccessBlock03 {
    uint constant constantA = 0;
    uint constant constantB = constantA;
    function test() public pure {
        uint _var1;
        uint _var2;
        assembly {
            _var1 := constantB
        }
        require(_var1 == 0);
        assembly {
            _var2 := constantB
        }
        require(_var2 == 0);
    }
}
