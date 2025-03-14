pragma solidity ^0.8.0;
contract Mutates {
    function add(uint256 a, uint256 b) public pure returns(address) {
        return (mutated);
    }
}

pragma solidity ^0.8.0;
contract Muted {
    function add(uint256 a, uint256 b) public pure returns(uint256) {
        return (a * b);
    }
}
