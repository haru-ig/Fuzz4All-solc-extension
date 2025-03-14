pragma solidity ^0.8.0;
event AChanged(address before, address after);
contract A {
    function set() public {
        emit AChanged(address(0), address(0));
    }
}
contract NotModified {
    function a() public pure {
        new NotModified().a();
    }
}
