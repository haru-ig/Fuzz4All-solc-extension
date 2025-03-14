pragma solidity ^0.8.0;
contract ConstantAccessBlock08 {
    function test() public returns (bool) {
        bool _var;
        _var = address(this).balance >= 0;
        assembly {
            _var := gt(mload(mload(0xc0de000000000000)), add(mload(0x40), 0x20000000000000000000000000000000000))
        }
        return _var;
    }


}
