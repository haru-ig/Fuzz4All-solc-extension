pragma solidity ^0.8.0;
contract MutationEquivalence4
{
    constructor() public {
    }
    function set(uint i, uint256 y) public {
    }
    function get(uint i) public view returns (uint256) {
        return uint256(1);
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence3
{
    constructor() public {
    }
    function set(uint i, uint256 y) public {
    }
    function get(uint i) public view returns (uint256) {
        return uint256(2);
    }
}
