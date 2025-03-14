pragma solidity ^0.8.0;
contract Test37 {
    struct C {
        uint[] storageC;
    }
    function f() public {
        if (C(msg.sender).storageC[0]!= 0) {
            revert();
        }
    }
}
