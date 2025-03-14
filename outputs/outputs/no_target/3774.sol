pragma solidity ^0.8.0;
contract E2 {
        uint256 e;
        uint256 a;
    constructor() public {
        e= a^1;
        a= a^1;
    }

    function h() public {
        e= e^2;
        a= a^1;
    }

    function i() public {
        e= e^2;
        a= a^1;
    }
}
contract E3 {
        uint256 e;
        uint256 a;
    constructor() public {
        e = 3;
        a = 3;
    }

    function h() public {
        e = 0;
        a = 0;
    }

    function i() public {
        e = 0;
        a = 0;
    }
}
contract E4 {
        uint256 e;
        uint256 a;
    constructor() public {
        e = a^a;
        a = a;
    }

    function h() public {
        e = a^a;
        a = a;
    }

    function i() public {
       e = a^a;
        a = a;
    }
}
