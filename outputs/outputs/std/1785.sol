pragma solidity ^0.8.0;
contract ExampleMutations {
library ArrayLib {
    function min(uint256 x) internal pure returns (uint256 y) {
        if(y == 0) {
            y = x;
        } else {
            if(x < y) {
                y = x;
            }
        }
        return y;
    }
    function max(uint256 x) internal pure returns (uint256 y) {
        if(y == 0) {
            y = x;
        } else {
            if(x > y) {
                y = x;
            }
        }
        return y;
    }
    function sum(uint256[] memory arr) internal pure returns (uint256 res) {
        uint256 count = arr.length;
        for (uint256 i = 0; i < count; i++){
            res = ArrayLib.max(res + arr[i]);
        }
        return res;
    }
}

pragma solidity ^0.8.0;
contract ExampleMutations {
}
