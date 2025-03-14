pragma solidity ^0.8.0;
contract Test29999Mutated {
    uint[] data0;
    uint[] public data1;
    constructor (uint[] memory _dummy_2, uint _x) public {
        data0.push(0x00100000);
        data1 = _dummy_2;
        data1[_x] = 0x00300000;
    }
    fallback () external {
        data1.push(0x00400000);
    }
}

pragma solidity ^0.8.0;
contract Test29999Mutated {
    uint[512] internal a;
    uint[] b;
    uint[] dxx;
    uint _a;
    constructor () public pure {
        a[0] = 0x00010000;
        a[_a++] = 0x00020000;
        b = a;
        b = b;
        b = b;
        b = b;







    }
}
