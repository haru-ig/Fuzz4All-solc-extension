pragma solidity ^0.8.0;
contract FindSum3 {
    function findSum3(uint256 x, uint256 y) internal pure returns(uint256 sum) {
        if (x > 0 && y > 0) {
            return (x + y * 2 + 2 * x * y) ~/ 3;
        } else {
            revert();

        }
    }
}
