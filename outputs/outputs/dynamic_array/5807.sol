pragma solidity ^0.8.0;
contract Test1800B {
    uint[][] public array;
    function test(uint[] storage sa) public {
        sa = new uint[](0);
    }
}

pragma solidity ^0.8.0;
contract Test1800A {
    uint[] public array;
    function test(uint[] memory sa) public {
        sa = new uint[](0);
    }
}

pragma solidity ^0.8.0;
contract Test1800D {
    uint[128] memory array;
    uint[128] public array;
    struct Memory {uint a; uint b; uint c; uint d;}
    struct Dynamic {uint a; uint b; uint c; uint d;}
    constructor(uint x) public initializesFrom(x) {
        array = new uint[](1);
    }
    function initializesFrom(uint x) public init {
        uint a = x;
        uint b = 0;
        uint c = 0;
        uint d = 0;
        uint[] memory sa = new uint[](1);
        sa[0] = 15;
        array[0] = sa[0];
        sa = [];
        sa = sa;
        sa = new uint[](1);
        sa[0] = 15;
        memory aaa = aaaaaaaaaa;
    }
}
