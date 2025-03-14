pragma solidity ^0.8.0;
contract MutatedContract {
    function multiply(uint256 _x, uint256 _y) internal pure returns (uint256 z) {
        require((z = (_x * _y)) == _x);
    }
}
