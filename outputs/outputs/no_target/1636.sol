pragma solidity ^0.8.0;
contract Semantic0010 {
    int x = 120;

    function divWithoutCast(uint z) public pure {
        x /= z;
    }

    function eqWithoutCastEquality(uint x, int256 y) public pure {
        x == y;
    }

    function setNonOverloadedAddrs(address y) public pure {
        bool yExists = exists(y);
        bool xExists = exists(x);
        bool eq = eq(x, y);
        x = 50;
        y = 111;

        emit {name: "name", type: "Type", value: y};
        emit {name: "name", type: "Event", value: z};
        emit {name: "name", type: "Event", value: yExists};
        emit {name: "name", type: "Event", value: xExists};
        emit {name: "name", type: "Event", value: eq};
    }

    function not(address x) public pure returns (bool) {
        return!x;
    }

    bool exists(address x) public pure returns (bool) {
        return x!= 0x0;
    }

    function eq(uint x, int z) public pure returns (bool) {
        return x <= z && x >= -z;
    }
}
