pragma solidity ^0.8.0;
contract Test {
    uint id;
    uint256 private counter;
    function useID() public {
    }
    function getID() public view returns (uint) {
        return id;
    }
    function setID() public {
        uint256 a = 1;
        for (uint i = 1; i <= 100000; i++) {
            counter += a;
            a = 2*a;
        }
    }
}
