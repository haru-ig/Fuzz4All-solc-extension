pragma solidity ^0.8.0;
contract Test19 {
    address public foo;
    function f() public {
        unchecked {
        }
        foo = _msgSender();
    }
}
