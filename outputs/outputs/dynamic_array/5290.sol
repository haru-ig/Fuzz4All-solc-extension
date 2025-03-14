pragma solidity ^0.8.0;

contract Test30 {
    function f() public pure returns (bool) {
        bytes[5] memory b;



        Test30 child;
        ChildStorage childStorage;
        if (b[0] == 0x51) {
            child = new ChildStorage(true);
            childStorage = childStorage(child);
            bytes memory b2;
            return true;
        } else {
            return false;
        }
    }
}
