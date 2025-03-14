pragma solidity ^0.8.0;
contract convert_contract {
    function convert(uint256 a, bytes32 digits) public pure returns (uint256) {
        return (a < 10)? (uint256(a)) : (uint256("1".pow(uint256(digits.length).sub(1)) ) * uint256(a));
    }
}
