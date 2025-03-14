pragma solidity ^0.8.0;
contract Test {
    bytes32 constant EMPTY_INPUT;
    function isEmpty(bytes memory a) public pure returns (bool) {
        return a == EMPTY_INPUT;
    }
    function getID() public view returns (uint) {
        return 1;
    }
}
