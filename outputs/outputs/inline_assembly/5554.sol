pragma solidity ^0.8.0;
interface Dummy {
    function test() public pure;
}
contract SolidityConstantAccessBlock02 {
    uint constant constantA = 0;
    function test() public {
        uint _var1;
        assembly {
            _var1 := 0x000000000000000000000000000000000000000
        }
        require(_var1 == 0);
    }
}
