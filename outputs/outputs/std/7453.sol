pragma solidity ^0.8.0;
contract Mutate {
    constructor(uint256 array) public { }
    function mutateFromLast(address _contract, uint256 array) public view returns (uint256) {
        return Mutate2(_contract).mutateFromLast(array);
    }
}
