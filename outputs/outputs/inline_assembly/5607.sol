pragma solidity ^0.8.0;
contract ConstantAccessBlock12 {
    function test() public returns (bool) {
        bool _var = true;
        for (uint i = 0; i <= 3; i++) {
            _var = _var && gtd(mload(0xc0de00000000000000), add(mload(0x40), 0x20000000000000000000000000000000000));
        }
        return _var;
    }
}

pragma solidity ^0.8.0;
contract PrivateVariableAccessBlock12{
    function test() public returns (bool) {
        uint _x;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _x := mload(0x40)
            }
            for (
                uint l = 2;
                (l /= 2) > 0;
                ((bytes(_x).length - 1) - l) >= _x
           ) {
                memory._x[abi.encodePacked(bytes(decodeUtf8(abi.encodePacked(mload(_x, _x + 1)))))] = bytes.encodePacked(abi.encodePacked(_x));
            }
        }
        return _x[abi.encodePacked(decodeUtf8(abi.encodePacked(mload(0, 0))))];
    }
}
