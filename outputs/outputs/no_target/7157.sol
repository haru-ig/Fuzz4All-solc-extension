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
        id = id + 1;
        id = id % 10;
        uint256 a = a * id;
        a += 1;
        id = a + 1;
        id = uint256(-1);
    }
}
