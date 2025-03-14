pragma solidity ^0.8.0;
contract A {
    function a() internal pure {
        require(true, "msg.sender should be the payer for A.a.");
    }
    function b() internal pure {
        a();
        require(false);
    }
}
