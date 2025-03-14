pragma solidity ^0.8.0;
contract E2 {
    uint256 constant d = 2;
    uint256 e;
    uint256 a;
    constructor E2() public {
        a = a^1;
        e = e^2;
    }
    function h() public {
        a = a^1;
        e = e^2;
    }
    function i() public {
        a = a^1;
        e = e^2;
    }
}
contract E3 {
    uint256 e;
    uint256 a;
    uint256 constant d = 2;
    constructor(uint256 _a, uint256 _e) public {
        a = _a;
        e = _e;
    }
    function h() public {
        a = a^1;
        e = e^2;
    }
    function i() public {
        a = a^1;
        e = e^2;
    }
}

pragma solidity ^0.8.0;
contract E4 {
    uint256 constant d = 2;
    uint256 constant m = 3;
    uint256 constant a = 1;
    uint256 constant e = 2;
    uint256 b;
    uint256 constant j = 5;
    uint256 constant q = 13;
    uint256 constant r = 20;
    uint256 constant f = 516;
    uint256 constant g = 371;
    uint256 constant g1 = 4928;
    uint256 constant h = 27748;
    uint256 constant h1 = 856;
    address rar;
    constructor() public {
        a = a^1;
        b = b^1;
        j = j^1;
        q = q^1;
        r = r^1;
        f = f^1;
        g = g^1;
        l = g^4;
        if (q < r && r > a) {
            g1 = g1^1;
        }
    }
    modifier modif1 {
        a = a^1;
        b = b^1;
        l = l^1;
        i = i^1;
        address = address^1;
        if (j == 0) {
            b = b^1;
            address = address^1;
        }
        else {
            b = b^1;
            b = address1;
            address1 = address^1;
        }
        if (i == 0) {
            a = a^1
