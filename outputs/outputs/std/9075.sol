pragma solidity ^0.8.0;
contract ExampleContract {
    uint16 x = 5;
    function addOne(int y) public pure returns (uint256) {
        return safeCast(y, 4);
    }
}
