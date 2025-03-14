pragma solidity ^0.8.0;
contract TestMutated0d3ae {
    uint256 public data0;
    uint256 constant data1 = 1;
    uint256 constant data2 = 2 * 2;
    uint256 data3 = 3;

    constructor() public {
        data0 = 101;
    }

    function mod0(uint256 x) public {
        data0 += 10 * x;
    }

    function mod1(uint256 x) public {
        data1 += 10 * x;
    }

    function mul2(uint256 x) public {
        data2 += 10 * x;
    }

    function mul3(uint256 x) public {
        data3 += 10 * x;
    }

    function div2(uint256 x) public {
        data0 -= 10 * x;
    }

    function div3(uint256 x) public {
        data1 -= 10 * x;
    }

    function mul4(uint256 x) public {
        data2 -= 10 * x;
    }

    function mul5(uint256 x) public {
        data3 -= 10 * x;
    }
}
contract TestMutated0d3af {
    uint256 public data0;
    uint256 data1;
    uint256 data2;
    uint256 data3;

    constructor() public {
        data0 = 101;
    }

    function mod0(uint256 x) public {
        data0 += 10 * x;
    }

    function mod1(uint256 x) public {
        data1 += 10 * x;
    }

    function mul2(uint256 x) public {
        data2 += 10 * x;
    }

    function mul3(uint256 x) public {
        data3 += 10 * x;
    }
}
contract TestMutated0d3b0 {
    uint256 public data0;
    uint256 data1;
    uint256 data2;
    uint256 data3;

    constructor() public {
        data0 = 101;
    }

    function div2(uint256 x1, uint256 y1) public {
        data0 += y1 - x1;
    }
    function div3(uint256 x, uint256 y) public {
        data1 += y - x;
    }
}
contract TestMutated0d3b1 {
    uint256 public data0;
    uint256 data1;
    uint256 data2;
    uint256 data3;

    constructor() public {
        data0 = 101;
    }

    function div2(uint256 x, uint256 y
