pragma solidity ^0.8.0;
contract SequencesInlines256 {
    function foo(uint256 x) public pure returns(uint256 y) {
        uint256 z;
        assembly {
            y := 256 - x
            z := mload(0x4000)
        }
        return x + z;
    }
}
