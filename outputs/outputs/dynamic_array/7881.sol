pragma solidity ^0.8.0;
contract Test21 {
    address public foo;
    function f() public payable {
        unchecked { }
        foo = address(0);
    }
}

pragma solidity ^0.8.0;
contract Test21 {
    address public foo;
    function f() public payable {
        unchecked { }
        foo = address(0);
    }
    function g() public payable {
        unchecked { }
        foo = 0;
    }
}
