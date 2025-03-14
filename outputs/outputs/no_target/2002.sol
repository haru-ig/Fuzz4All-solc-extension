pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function g(uint16 _x) public {
        if (_x > 16777215) {
            _x;
        }
        x = x + _x;
    }
}
pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function h(uint16 _x) public revert {
        if (_x > 16777215) {
            _x;
        }
        x = x + _x;
    }
}
pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function i(uint16 _x) public {
        if (_x > 16777215) {
            _x;
        }
        __;
        x = x + _x;
    }
}
pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    bool flag;
    function f() public {
        if (flag) {
            flag;
        }
        x = x + 1;
    }
}
pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    bool flag;
    function g() public {
        flag;
        x = x + 1;
    }
}
pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function h() public {
        flag;
        x = x + 1;
        __;
    }
}
pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function i() public {
        flag;
        x = x + 1;
    }
}
pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function f2(uint16 x) public {
        x;
    }
    functon f(uint16 y) public {
        f2(y);
    }
}
pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function g2(uint16 x) public {
        x;
    }
    function g(uint16 y) public {
        g2(y);
    }
}
pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function h2(uint16 x) public {
        x;
    }
    function h(uint16 y) public {
        h2(y - x);
    }
}
pragma solidity ^0.8.0;
contract Semantic {
    uint16 public x;
    function i2(uint16 x) public {
        x;
    }
    function i(uint16 y) public {
        i2(y);
