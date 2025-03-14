pragma solidity ^0.8.0;
contract ConstantAccessBlock05 {
    uint constant constantA = 0;
    uint constant constantA = 0;
    function test() public pure {
        uint _var1;
        uint _var2;
        assembly {
            _var1 := constantA
            _var2 := constantA
        }
        require(_var2 == 0);
    }
}
