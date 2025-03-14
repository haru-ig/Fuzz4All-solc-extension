pragma solidity ^0.8.0;
contract ConstantAccessBlock01 {
    uint constant constantA = 0;
    function test() public pure {
        uint _var1;
        assembly {
            _var1 := constantA
        }
        require(_var1 < 3);
    }
}
