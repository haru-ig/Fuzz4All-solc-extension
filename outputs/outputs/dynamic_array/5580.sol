pragma solidity ^0.8.0;
contract Test69 {
    uint32[] internal x = new uint32[](6);
    function f() public pure {
            delete x;
        for (uint32 i = 0; i < 6; ++i) {
        x[i] = 0;
    }
        x = new uint32[](1);
    }
}

contract Test70 {
    int128[] x = new int128[](3);
    function f() public pure {
        x = new int128[](1);
    }
}

contract Test71 {
    uint256[] internal x;
    function f() public pure {
        x = new uint256[](1);
    }
}

contract Test72 {
    int256[] internal x;
    function f() public pure {
        x = new int256[](1);
    }
}

contract Test73 {
    uint256 y;
    uint[] internal e;
    function f() public pure {
        e = new uint[](1);
    }
}
