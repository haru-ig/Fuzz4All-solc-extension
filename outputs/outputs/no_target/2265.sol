pragma solidity ^0.8.0;
contract mutation2 {
    uint public c;
    function m() public {
        c = unchecked((c + 3) % 5);
    }
}
