pragma solidity ^0.8.0;
contract SemanticTest {
    uint256[6] array1;
    constructor (uint256 _mint) public {}
    function test() public view {
        array1.push(_mint);
    }
}
