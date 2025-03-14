pragma solidity ^0.8.0;
contract L15 {
    function square(uint x) internal pure returns (uint) {
        assembly {
        mstore(0x40, x)
        div(0x40, 0x30)
        }
        return x;
    }
}
