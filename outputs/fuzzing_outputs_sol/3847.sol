pragma solidity ^0.8.0;
contract Example3 {
    function payable __fallback(address payable) public pure returns (bytes memory) {
        return new bytes(0);
    }
}
