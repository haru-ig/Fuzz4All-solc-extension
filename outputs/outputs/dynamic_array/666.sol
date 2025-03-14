pragma solidity ^0.8.0;
contract test60 {
    constructor() public {
        uint x = 1;
        a[x+1] = 1;
    }
    function test() public returns (bool) {
        uint[] memory a = new uint[](2);
        a[0] = x;
        for (uint i = 1; i < 3; i++) {
            a[i] = i;
        }

    }
}

pragma solidity ^0.8.0;
contract test60 {
    uint[] a;
    uint b;
    constructor() public {
        b = 1;
        a = new uint[](1);
        a[0] = b;
        a = b;
    }
    function test() public returns (bool) {
        for (uint i = 0; i < a.length; i++) {
            uint i_2;
            i_2 = a[i];
        }
        require(a[1] == 1);
        return true;
    }
}
