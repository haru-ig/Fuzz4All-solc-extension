pragma solidity ^0.8.0;
contract ConstantAccessBlock04 {
    uint constant constantA = 1;
    uint constant constantB = 1;
    function test() public pure {
        uint _var1;
        uint _var2;
        assembly {
            _var1 := constantA
            _var2 := constantB
        }
        require(
            _var1 == constantA,
            "should equal constantA: " + uint(_var1) + ", " + uint(constantA));
        require(
            _var2 == constantA,
            "should equal constantA: " + uint(_var2) + ", " + uint(constantA));
    }
}
