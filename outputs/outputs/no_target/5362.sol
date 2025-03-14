pragma solidity ^0.8.0;
contract NoChanges {
    uint256 x;
    uint256 y;
    modifier change() {
        modified = true;
        x += 1;
        if(x > y) {
            x = x - y;
        }
        emit Emitted(x, y);
        _;
    }
    function noChange() public change returns (uint256) {
        y = x;
        x = 0;
        modified = false;
        return 3;
    }
}
