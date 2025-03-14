pragma solidity ^0.8.0;
contract third4 {
    function f(address a) public view returns (bool) {
        if (a < 0) {
            return false;
        }
        return true;
    }
}
