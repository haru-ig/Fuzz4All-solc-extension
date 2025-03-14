pragma solidity ^0.8.0;
contract Simple {
    constructor () {
        revert(keccak256(abi.encodePacked("Please call revert")));
    }
    function callRevert() public view returns (uint256) {
        return 0;
    }
}
