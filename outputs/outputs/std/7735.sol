pragma solidity ^0.8.0;
contract EquivalentMutated {
    struct Foo {
        uint8 a;
        uint256 b;
        bytes32 c;
    }

    struct Bar {
        uint256 d;

        mapping (uint256 => mapping (uint8 => uint8)) e;
    }

    mapping (uint256 => mapping (uint8 => Foo)) g;
    mapping (uint256 => Bar) r;

    mapping (uint256 => uint8) i;
    uint256 static public j;

    constructor () {
        a = 5;
        b = 1;
        x = 0;
        y = 1;
        z = 2;
    }


    function get() public view returns (uint256 a) {
        require(b > 0, "Not enough to access an element");
        uint8 k = i[c[1][b-1]];
        uint8 h = r[b-1].e[b-1][k];
        return a;
    }
}
