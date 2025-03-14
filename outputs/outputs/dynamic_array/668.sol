pragma solidity ^0.8.0;
contract test62 {
    uint[] a;
    constructor() public {
        a[2] = 2;
    }
    function test() public returns (bool) {
        for (uint i = 0; i < a.length; i++) {
            uint i_2 = a[i];
        }
        require(a.length == 3);
        return true;
    }
}

pragma solidity ^0.8.0;
contract test65 {
    uint[] a;
    constructor() public {
        uint size = 100000;
        uint i;
        for (i = 0; i < size; i++) {
            a.push(uint16(uint256(i)));
        }
    }
    function test() public returns (bool) {
        for (uint j = 0; j < 100 && i < a.length; i++) {
            uint v = uint(a[i]);
            require(v == uint(uint16(uint256(i)))));
        }
        return true;
    }
}
