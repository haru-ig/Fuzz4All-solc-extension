pragma solidity ^0.8.0;
contract FindSum3 {
    uint[] public a;
    function findSum3(uint256 x, uint256 y) internal pure returns(uint256 sum) {
        uint256 index = 0;
        uint256 z;
        while (z < sum) {
            z = z + x;
            x /= 2;
            index += 1;
            if (index >= a.length) {
                return z;
            }
        }
        return z;
    }
}
