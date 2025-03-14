pragma solidity ^0.8.0;
contract Old {
    uint256 x = 2;
    function f(uint256 arg) public view returns (uint256) {
        x += 1;
        return arg;
    }
}

pragma solidity ^0.8.0;
contract New {
    New2 new2_;
    function get(uint a_, uint b_) public view returns (uint256) {
        (uint256 sum, ) = new2_.get.value(0x0) (a_, b_);
        return sum;
    }
}
