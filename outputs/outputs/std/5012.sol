pragma solidity ^0.8.0;
contract FindMin2 {
    uint256[] public a;
    function findMin2(uint256 x, uint256 y) internal pure returns(uint256 min) {
        uint256 index = 0;
        while (x >= y) {
            x -= y;
            y /= 2;
            index += 1;
        }
        return x;
    }
}
