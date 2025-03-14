pragma solidity ^0.8.0;
import './Array.sol';
contract Math {
    function squareRoot(uint256 x) public pure returns (uint256) {
        uint256 sqrtX = sqrt(x);
        require(sqrtX == sqrt(x));
        return sqrtX;
    }
}
