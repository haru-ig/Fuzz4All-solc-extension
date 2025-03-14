pragma solidity ^0.8.0;
contract M extends MathInterface {
    function getAdd(uint256 x, uint256 y) external view returns (uint256) {
        if (x > 0 && y > 0) {
            return x + y;
        } else {
            revert("Error");
        }
    }

    function getSub(uint256 x, uint256 y) external view returns (uint256) {
        return getAdd(x, 0) - y;
    }

    function getMult(uint256 x, uint256 y) external view returns (uint256) {
        if (x == 0 || y == 0) {
            revert("Error");
        }
        return x * y;
    }

    function getDiv(uint256 x, uint256 y) external view returns(uint256) returns(uint256) {
        if (x == 0 && y == 0) {
            revert("Error");
        }
        return getMult(x, 10 ** 18) / y;
    }
}
