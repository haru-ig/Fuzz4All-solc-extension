pragma solidity ^0.8.0;

contract MutatedWithInterfaceSupport {
    uint256 public immutable arr;

    Mutated public Mutated;
    function get() public view returns(uint256) {
        return arr.length;
    }
    function getArr() public pure returns(uint256[] memory) {
        return arr;
    }
    function add(uint256 x, uint256 y) public pure returns(uint256) {
        Mutated.mutate;
        return arr.length + x.sub(y);
    }
}
