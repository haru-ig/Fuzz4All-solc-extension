pragma solidity ^0.8.0;
contract C {
    mapping(address => uint256) a;
}
function f() public pure {
    uint256 x = 11;
    a[msg.sender] = x;
}

pragma solidity ^0.8.0;
contract C {
    C c;

    function f() public {
        c.f();
        uint256 value = a[msg.sender];
        assert(value == a[msg.sender]);
    }

}

pragma solidity ^0.8.0;
contract C {
    function f() public { }
    function g() public external payable { }
}
