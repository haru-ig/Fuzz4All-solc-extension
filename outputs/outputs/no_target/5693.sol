pragma solidity ^0.8.0;
contract Baz3 {
    address public a;
    bytes32 public b;
    uint256 public c;
}

pragma solidity ^0.8.0;
contract Baz4 {
    address public a;
    bool public b;
    int156 public l;
    uint256 public u;
    uint8 public f;
    uint160 public x;
    uint public d;
}

pragma solidity ^0.8.0;
contract Baz {
    struct Data{
        address a;
        uint256 b;
        string c;
    }
    Data a;
    bytes32 public b;
    uint public c;
    modifier m() {
        emit A();
        a;
        b;
        c;
        A();
        assert(c>0);
        assert(a.a>0);
        assert(a.b>0);
        assert(a.b > 10);
        assert(a > 10);
        assert(a.a > 10);
        assert(true);
    }
    function f() public {
        assert(b.length == 3);
        c;
        b;
        a.b;
        a.c;
        A();
        assert(c+10 > 50);
        assert(a2 > 10);
        assert(a > 10);
        emit A();
    }
    event A (uint a, bytes32 b, string c);
}

pragma solidity ^0.8.0;
contract Baz5 {
    address a;
    address a2;
    function Baz() internal {
        emit Address (a2, a);
        assert(a2==address(0));
        a;
        assert(a2 == address(0));
        a;
    }
    function add() public {
        emit Address (1, 1);
        a;
        a;
    }
    event Address (address a, address b);
}

pragma solidity ^0.8.0;
contract Baz6 {
    event Test(bytes32 a, int156 b, uint, uint8 c, uint160 d, uint256, string);
    function Baz(bytes2
