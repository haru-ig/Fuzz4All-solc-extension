pragma solidity ^0.8.0;
contract C {
constructor()public {}
function f() private view returns (bool) { return f(); }
}

pragma solidity ^0.8.0;
contract C {
constructor()public {}
function f() public { (bool b) = f(); }
}
