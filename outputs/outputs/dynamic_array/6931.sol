pragma solidity ^0.8.0;
contract Test3 {
    mapping(uint => uint) s3;

    constructor(uint x) {
        s3[0] = x;
    }

    function f() public {
        s3[0] += 2;
    }
}

pragma solidity ^0.8.0;
contract Test4 {
    uint[] internal s4;

    constructor(uint x) {
        s4.push(x);
    }

    function f() public {
        s4.push(s4.length);
        s4.push(s4.length);
        s4.push(s4.length);
        s4.push(s4.length);
    }
}

pragma solidity ^0.8.0;
library Lib {
    struct s { uint x; }

    s[] public ss;
    function b() public {
        ss.push(s(0));
        ss.push(s(0));
        ss.push(s(0));
        ss.push(s(0));
        ss.push(s(0));
    }
}

pragma solidity ^0.8.0;
library Lib2 {
    uint[] internal b;

    function b() public {
        b[0] = 1;
        b[0] = 1;
        b[0] = 1;
        b[0] = 1;
        b[0] = 1;
    }
}
pragma solidity ^0.8.0;
contract Test5 {
    mapping(uint => uint) s5;

    function h() public {
        s5[0] = -1;
        s5[0] = -1;
        s5[0] = -1;
        s5[0] = -1;
        s5[0] = -1;
