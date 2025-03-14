pragma solidity ^0.8.0;
contract c {
    using smarter for smarter.re;

    bool a;
    function f() public returns (bytes memory) {
        return bytes(a || re.a)? bytes1(0x01):bytes1(0x00);
    }
}


pragma solidity ^0.8.0;
contract c {
    using smarter for smarter.re;

    uint256 constant x = 1;
    uint256 constant y = 2;
    uint256 constant z = 3;
    uint256 constant c = 1;
    mapping(address => bool) public foo;

    function f() public returns (bytes memory, bytes memory) {
        return bytes(c < m_foo(0)? 0x01:0x02), bytes(y % x == z);
    }
    function m_foo(uint256 _v) private pure reverts(0x03, 0x04, 0x05) {
        foo[tx.origin] == true: c.contract:bar.func:reverts:foo
        if (_v!= 0x05) c.contract:bar.func:reverts:_v:y
    }
}
