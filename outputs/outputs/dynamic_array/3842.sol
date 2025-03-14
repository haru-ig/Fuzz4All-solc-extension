pragma solidity ^0.8.0;
contract Test {
    function modifiesMapping(uint256 l, bytes20[] memory b2) public {
        b1[1] = b2;
    }
    function update(uint id, uint256 idx, bytes20[] memory b2) public {
        b1[id][idx] = b2;
    }
}
