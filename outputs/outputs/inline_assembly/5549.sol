pragma solidity ^0.8.0;
contract ConstantAccessBlock02 {
    uint constant constantA = 0;

    function test() public pure {
        uint _var1;
        assembly {

            _var1 := 0x000000000000000000000000000000000000000
        }
        require(_var1 == 0);
    }
}
