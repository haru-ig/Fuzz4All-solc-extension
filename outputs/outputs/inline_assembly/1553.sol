pragma solidity ^0.8.0;
contract Repeater {
    uint256 n = 0;
    function set_n (uint256 n_new) public {
        n = n_new;
    }
    function repeat() public {
        for(n;n>0;n--) {
            x=msg.data;
        }
    }
}
