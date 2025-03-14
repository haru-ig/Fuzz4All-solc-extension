pragma solidity ^0.8.0;
contract ConstantAccessBlock06 {

    function test() public view returns (bool) {
        uint _var;
        assembly {
            mstore(0x9081536000000000, mload(0x9081536000000000))
            _var := eq(mload(0x00), add(mload(0x9081536000000000), 0x1))
        }
        return _var;
    }
}


pragma solidity ^0.8.0;
contract ConstantAccessBlock04 {
    function test() public view returns (bool) {
        uint _var;
        assembly {
            _var := eq(mload(mload(0x0000000000000000000000000000000000000000000000000000000000000002)), add(mload(0x00), 0x2))
        }
        return _var;
    }
}
