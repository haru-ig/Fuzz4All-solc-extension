pragma solidity ^0.8.0;
contract ConstantAccessBlock04Plus {
    uint constant constantA = 1;
    uint constant constantB = 1;
    function test() public pure {
        uint _var1;
        uint _var2;
        assembly {
            _var1 := constantA + constantB
            _var2 := constantA + constantB
        }
        require(_var1 == constantB);
        require(_var2 == constantB);
    }
}
