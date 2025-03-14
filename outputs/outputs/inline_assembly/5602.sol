pragma solidity ^0.8.0;
contract ConstantReturn {
    function test(bool _var) public pure returns (bool) {
        assembly {
            switch eq(mload(0xc0e000000000000f), 0x0), case_eq(0x0, 0x1) {
                mstore(0xc0e00000000000000, sub(add(mload(0xc0e00000000000000), 0x20), 30))
                return eq(mload(0xc0e00000000000000), 0x1)
            }
        }
    }
}
