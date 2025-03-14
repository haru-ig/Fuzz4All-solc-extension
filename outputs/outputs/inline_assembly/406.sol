pragma solidity ^0.8.0;
contract M12 {
    uint public b;
    function modify() public {
        b = b+1;
    }
    function access() public view {
        uint x;
        assembly {x := b}
    }
}
