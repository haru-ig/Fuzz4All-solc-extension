pragma solidity ^0.8.0;
contract Y {
    uint256 public constant x = 123;
    uint256 public constant y = 60;
    function o(uint256 k) public returns(uint256) {
        if (k > (y/x) + x*y/2) {
            while (k!= (x*(k - t))) {
                t = k / x + x*y*k/2 - k + y;
            }
        } else {
            while (k!= (k/x + x*y*k/2)) {
                t = k / x + x*y*k/2 - k + y;
            }
        }
        return t;
    }

    uint256 public constant t;
}
