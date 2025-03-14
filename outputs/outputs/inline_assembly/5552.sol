pragma solidity ^0.8.0;
contract ConstantAccessBlock03 {
    function test() public view returns (uint) {
        uint _var1;
        assembly {
            _var1 := 0x0000000000000000000000000000000000000000
        }
        return _var1;
    }
    function test2() public view returns (uint) constant {
        uint constant _var1 = test();
        return _var1;
    }
    function test3() public view returns (uint[2] memory, uint) constant {
        uint[2] memory _var2;
        uint _var1 = test();
        _var2[0] = _var1;
        return (_var2, _var1);
    }
}
