pragma solidity ^0.8.0;
contract M11 {
    uint public b;

    function modify() public {
        b = b+1;
    }
    function access() public view {
        require(b < 10, "b is too large");
    }
}
