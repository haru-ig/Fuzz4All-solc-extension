pragma solidity ^0.8.0;
contract FixedBlock6 {
    uint constant fixed = 32881;

    function f() public {
        assembly {
            mstore(_x, 0x862f309c)
        }
        assert(keccak256(abi.encodePacked(get(), 0)) == fixed);
    }

    function get() public pure returns(uint) {
        assembly {
            return(mload(_x))
        }
    }
}
