pragma solidity ^0.8.0;
contract ConstantAccessBlock04 {
    uint constant constantA = 0;
    uint constant constantB = 0;
    function test() public view returns (uint) {
        uint _var1;
        uint _var2;
        assembly {


            _var1 := constantA


            _var2 := constantB
        }
        require(_var2 == 0);
        return _var1;
    }
}
