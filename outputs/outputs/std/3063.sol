pragma solidity ^0.8.0;

interface IMutability {
    fallback() external;
    function mutate() external;
}
contract Mutability {

    IMutability public immutable a = new Mutability;
    function testMutability() public pure returns (uint256) {
        return a.mutate();
    }
}
