pragma solidity ^0.8.0;
contract Test25 {
    uint8[] public foo = new uint8[](42);
    bool public flag;
    function f(uint8[] memory) public {
        unchecked {
        }
        foo[flag] = foo[flag];
    }
    function g(uint8[] memory b) private {
        unchecked {

        }
        foo = b;
    }
    function h(uint8[] memory) public {
        safeFunc();
        g(foo);
    }
    function safeFunc() public pure {
        unchecked {

        }
        if (foo.length > 0) {
            foo = foo[0] == 56? [77] : [65];
        } else {
            foo = [56];
        }
    }
    function i() public {
        h(foo);
    }
}

pragma solidity ^0.8.0;
contract Test26 {
    uint8[] public foo;
    function f() public {
        unchecked {
             uint8[] memory w = [1, 2];
             w = w[1:3] + [1, 2].concat([1, 2])[0] + [3];
        }
        foo = w;
    }
}

pragma solidity ^0.8.0;
contract Test27 {
    uint8[] public foo;
    constructor(uint8[] memory f) public {
       unchecked {
           foo = f;
       }
    }
    function f() public {
        unchecked {
             uint8[5] memory w;
             for (uint i = 0; i < w.length; i++) {
                 w[i] = foo[i];
             }
             w = w + foo[0];
        }
        foo = w;
    }
}

pragma solidity ^0.8.0;
contract Test28 {
    uint8[] public foo;
    uint8 x;
    constructor(uint8[] memory f) public {
       unchecked {
           foo = f;
       }
    }
    function f() public {
        unchecked {
            uint8(foo[x]) = foo[x];
            foo = [x];
        }
    }
}

pragma solidity ^0.8.0;
contract Test29 {
    uint8[] public foo;
    uint8 x;
    uint8 y;
    uint8 z;
    bool b;
