pragma solidity ^0.8.0;
contract Test {
    function test() public returns(bool) {
        function isValidAddress(address _a, bytes memory _b) internal pure returns (bool) {
            if (_a!= 0x0000000000000000000000000000000000000000 && _b.len()!= 20) {
                return false;
            }
            assembly {
                mstore(add(0x00, _a), mload(_b))
            }
            return true;
        }
        function isValidUint(uint _a, bytes memory _b) internal pure returns (bool) {
            if (_a == 0 && _b.len()!= 4) { return false; }
            assembly {
                mstore(add(0x00, _a), mload(_b))
            }
            return true;
        }
        assembly {
            isValidAddress(0xffffff39cc0368c086221a3c7959e06ea13b75838a7aa67a6f3d1cdcbd2c2b2b41c0b9eb1b0f5a45049f4bf5633843e801c5c8f, 0x50) && isValidUint(0x0172782703a3a6687e629c0c52d0f2babe49150ed475fc6c2134370a169c73fc, 0x6e)
        }
        return true;
    }
}
