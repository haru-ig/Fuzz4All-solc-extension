pragma solidity ^0.8.0;
contract E2 {
        uint256 z;
        uint256 x;
    constructor() public {
        z= x^1;
        x= z^1;
    }
    function h() public {
        assert(z & 1!= 0);
        z= z^x;
        x= z^x;
    }
    function i() public {
        assert(x & 1!= 0);
        z= z^x;
        x= z^x;
    }
}
contract E3 {
        uint256 z;
        uint256 x;
    constructor() public {
        z = 3;
        x = 3;
    }
    function h() public {
        assert(z & 1!= 0);
        z = z^x;
        x = z^x;
    }
    function i() public {
        assert(x & 1!= 0);
        z= z^x;
        x= z^x;
    }
}
contract E4 {
        uint256 z;
        uint256 x;
    constructor() public {
        x = a^a;
        a = x^1;
        a = a^1;
    }
    function h() public {
        assert(z & 1!= 0);
        z = z^x;
        x = z^x;
    }
    function i() public {
        assert(x & 1!= 0);
        z = z^x;
        x = z^x;
    }
}
