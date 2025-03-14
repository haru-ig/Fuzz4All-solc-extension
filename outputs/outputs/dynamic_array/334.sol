pragma solidity ^0.8.0;
contract L {
    event Created;
    function f() public {
        address[] memory a = new address[](1);
        a[0] = 0x03;
        emit Created();
    }
}
