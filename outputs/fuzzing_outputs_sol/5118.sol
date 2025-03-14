pragma solidity ^0.8.0;
contract C2 {
    receive() external {
        if (1 << uint(uint8(address(this)).call.data(abi.encodeWithSignature("return(uint8)")))) {
            uint u;
            assembly {
                mstore(0xc0, mload(0xc0))
                mstore(mload(0xc0), 1)
                sload(0xc0)
                return(mload(0xc4))
            }
        } else {
            revert();
        }
    }
}
