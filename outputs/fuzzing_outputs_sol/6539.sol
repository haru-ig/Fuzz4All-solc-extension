pragma solidity ^0.8.0;
contract C {
    function f() public payable {
        uint256 x;
        x = 0;
        x = x + 1;
        x = x ** 2;
    }
}

pragma solidity ^0.8.0;
contract C {
    function f() public payable {
        uint256 x;
        C.f();
    }
}
