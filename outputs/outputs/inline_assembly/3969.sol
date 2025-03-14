pragma solidity ^0.8.0;
contract SemanticallyEquivalent56 {
  uint16 constant x = 0;
  uint16 constant y = 0;
  function foo(uint16 y, uint16 x) public pure {
    assembly { revert("bar", sub(x, and(y, 31))) }
  }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
  function f(
    int8 a) public pure {
  }
}

pragma solidity ^0.8.0;
contract A {
    function f() public pure {
        int8 a = 0;
        f(a);
    }

    function f(int8 a) public pure {
    }
}

pragma solidity ^0.8.0;
contract A {
    function f(int8 a) public pure {
        uint8 a = 0;
        f(a);
    }
}

pragma solidity ^0.8.0;
contract AB {
    function f() public pure {
        A a;
        uint8 a = 0;
        a.f(a);
    }
}

pragma solidity ^0.8.0;
contract A {
    A a;
    uint8 a = 0;

    function f(int8 a) public {
        a = 0;
    }

    function f() public {
        if (a <= 1) {
          a++;
        }
        a = 0;
        int8 a = 0;
        f(a);
        int8 b = 2;
        if (a < b) {
          a = 0;
        }
    }
}

pragma solidity ^0.8.0;
contract AB {
    A a;
    uint8 a = 0;

    function f() public pure {
        A a;
        uint8 a = 0;
        function f(int8 a) public pure {
        }
        a.f(a);
        int8 b = 5;
        f(b);
    }
}

pragma solidity >=0.5.0;
contract A {
    uint8 constant x = 0;
    uint8 constant x2 = 0;
    int8 constant y = 0;
    uint8 constant y2 = 0;
    bool constant b = false;

    function f() public pure {
        int8 c = 0;
        uint8 c = 0;
        (c, c) = (x, b);
        if ((c, c)) {
          (c, c) = (y, b);
        }
        if (!(c, b)) {
          (c, b) = (y,
