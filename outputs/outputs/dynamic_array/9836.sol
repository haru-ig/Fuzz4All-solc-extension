pragma solidity ^0.8.0;
contract SemanticTest_v08 {
    uint256[] memory x = [0];
    function gig(uint256[] memory _a, uint i) public {
        x[i] = _a[i];
    }
}
