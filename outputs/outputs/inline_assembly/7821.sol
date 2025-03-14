pragma solidity ^0.8.0;
contract L16 {
    function noinline() public{}
    function mutatedAdd(uint a, uint b) public pure returns (uint) {
        assembly {

            add(0x0, a)
            mul(0x0, b)
            mstore(0x40, x0)
            add(0x3e, 4)
        }
        return x0;
    }
}
