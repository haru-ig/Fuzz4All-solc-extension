pragma solidity ^0.8.0;
contract Semantic2Changed5 {

    function balance4() public pure {
        uint a = -1;
        if (a == 1) {
            return 1;
        } else if (a == -1) {
            return 1;
        } else {
            return 0;
        }
        if (a == -1) {
            return 0;
        }
    }
}
