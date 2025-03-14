pragma solidity ^0.8.0;
contract OriginalSolidity {
    event E();

    struct a {
        uint x;
    }
    mapping (address => a) public m;

    function x() public {
        if (m[to()].x) {
            emit E();
        }
    }
}

pragma solidity 0.8.0;
contract OriginalSolidity {
    event E();

    struct a {
        uint x;
    }
    mapping (address => a) a;
    a public b;

    function x() public {
        if (b.x) {
            emit E();
        }
    }

    function y() public {
        b.x++;
        x();
    }
}

pragma solidity 0.8.0;
contract OriginalSolidity {
    event E();

    struct a {
        uint x;
    }
    mapping (address => a) public map;
    a public b;

    function x() public {
        if (map[to()].x) {
            emit E();
        }
    }

    function y() public {
        map[to()].x++;
        x();
    }
}
