pragma solidity ^0.8.0;
contract MutateBigNeg2 {
    uint x;
    uint y;
    constructor() {
        x = -5;
        y = 0xFFFFFFFFFFFF;
    }
}

pragma solidity ^0.8.0;
contract MutateBigNegTest {
    MutateBigNeg1 d;
    MutateBigNeg2 e;
    uint a;
    uint b;
    uint res;
    event Log(uint a, uint b, uint res);
    constructor() {
        d = MutateBigNeg1(new MutateBigNeg1());
    }
    modifier only_a {
        require(a == 5);
        _;
    }
    modifier only_b {
        require(b == 9);
        _;
    }
    modifier log_res {
        emit Log(a, b, res);
        _;
    }
    function runIt() only_a only_b {
        uint c;
        c =  a + b;
        b = a - 3;
        uint result = b - d.x;
        b = c + b;
        c = result + c;
        d.y = b;
        e.y = a + 4 + c;
        res = e.y;
    }
}
