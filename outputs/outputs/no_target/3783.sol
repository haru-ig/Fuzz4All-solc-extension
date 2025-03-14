pragma solidity ^0.8.0;
contract E5 {
        uint256 e;
        uint256 a;
    constructor() public {
        e = a^a;
        a = a;
    }
    function h() public {
        e = a^2;
        a = a^a;
    }
    function i() public {
        e = a^2;
        a = a^a;
    }
}
contract E6 {
        uint256 e;
        uint256 a;
    constructor() public {
        e = a^a;
        a = a*2;
    }
    function h() public {
        e = a^a;
        a = a*3;
    }
    function i() public {
        e = a^a;
        a = a*4;
    }
}
contract E7 {
        uint256 e;
        uint256 a;
    constructor() public {
        e = a^2;
        a = a^0;
    }
    function h() public {
        e = a^2;
        a = a^1;
    }
    function i() public {
        e = a^2;
        a = a^2;
    }
}
contract E8 {
        uint256 e;
        uint256 a;
    constructor() public {
        e = a^2;
    }
    function h() public {
        e = a^2;
        a = uint160(-1);
    }
    function i() public {
        e = a^2;
        a = uint160(9);
    }
}
