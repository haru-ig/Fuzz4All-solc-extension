pragma solidity ^0.8.0;

import "./Test388Library.sol";
contract Test388Contract {
    function test() public pure {
        uint256[2] memory array = [1, 2];
        (uint256 a, uint256 b) = array[(uint256)1];
        assertEq(a, array[(uint256)1][0]);
        assertEq(b, array[(uint256)1][1]);
    }
}
