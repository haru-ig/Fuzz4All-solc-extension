pragma solidity ^0.8.0;
contract Caller {
    function fallbackFunction(uint256 x, uint256 y) public payable {
        uint256 z = x + 100 + y;
        uint256 k = z / 100;
        emit Evt(k);
    }
}
