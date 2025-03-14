pragma solidity ^0.8.0;
contract ConstantAccessBlock02 {
    uint constant constantA = 0;
    uint constant constantB = 0;
    function test() public pure {
        uint _var1;
        assembly {
            _var1 := constantA
        }
        uint _var2;
        assembly {
            _var2 := constantA
        }
        require(_var2 < 3);
        require(_var1 == _var2);
    }
}
