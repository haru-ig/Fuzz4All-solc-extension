pragma solidity ^0.8.0;
contract Fallback {
    function doThing(Caller calldata caller, uint calldata amount, bool calldata commit) internal returns (string memory s) {
        if (commit) {
            s = "Success";
        } else {
            if (caller.isContract()) {
                s = calldata.to.call{value: amount}("");
                return s;
            }
        }
    }
}
