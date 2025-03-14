pragma solidity ^0.8.0;
contract L {
    function m() public pure {
        uint i = 24;
        while (i >= 0) {
            LStorage storage _L = LStorage(msg.sender);
            if ((i == 0) && (_L.hasLog())) i = 0;
            i--;
        }
    }
}
