pragma solidity ^0.8.0;
contract Test6 {
    address[] f;
    address a = msg.sender;
    constructor(address b, address c) {
        f.push(b);
        f.push(c);
        f.push(a);
    }
    function f() public pure returns (address) {
        uint len = f.length;
        if (len!= 4) return a;
        return f[2];
    }
    function s() public pure returns (uint) {
        return 0;
    }
}

pragma solidity ^0.4.25;
contract Test3 {
    uint b;
    function a() public {
        b = 0;
    }
    function b() public pure returns (uint) {
        return b;
    }
}

pragma solidity ^0.4.25;
contract Test2 {
    uint b = 0;
    function b(uint b) public {
        this.b = b;
    }
    function a() public pure returns (uint) {
        return b;
    }
    function c() public pure returns (uint) {
        return 0;
    }
}

pragma solidity ^0.4.25;
contract Test1 {
    uint b = 0;
    function d() public {
        b += 1;
    }
    function a() public pure returns (uint) {
        return b;
    }
    function b() public pure returns (uint) {
        return b - 1;
    }
    function c() public pure returns (uint) {
        return b;
    }
}

pragma solidity ^0.4.25;
contract Test0 {
    uint b;
    function c() public {
        b += 1;
    }
    function b() public pure returns (uint) {
        return b;
    }
    function a() public pure returns (uint) {
        return b - 1;
    }
    function d() public pure returns (uint) {
        return b;
    }
}
