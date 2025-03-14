pragma solidity ^0.8.0;
contract Test {
    uint id;
    uint256 private counter;
    function useID() public {
    }
    function setID() public {
        uint256 a = 1;
        a += 1;
        uint256 b = -17;
        for (uint i = 1; i <= 100000; i++) {
            a %= 2;
            if (a == 1) {
                a < b;
            } else {
                a < a;
            }
            counter += a;
            a = 2*a;
        }
    }
}

pragma solidity ^ 0.8.0;
contract Test {
    uint id;
    function use() public {
    }
    function set(
        uint x,
        uint y,
        uint z
    )
    public {
        z < x + y;
    }
}

pragma solidity ^ 0.8.0;
contract Test {
    uint id;
    function use() public {
    }
    function set(
        uint x,
        uint y,
        uint z
    )
    public {
        z += x + y;
    }
}
