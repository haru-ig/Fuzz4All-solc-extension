pragma solidity ^0.8.0;
contract test270 {
    uint[1] a;
    constructor() public {
        for (uint i = 0; i < a.length; i++) a[i] = 1;
    }
    function test() public returns (bool) {
        for (uint i = 0; i < 3; i++) a.push(i);
        return false;
    }
}

pragma solidity ^0.8.0;

contract test271 {
    uint[] a;
    constructor() public {
        a = new uint[](2);
        a[0] = 1;
        a[1] = 1;
    }
    function test() public returns (bool) {
        for (uint i = 0; i < 3; i++) a[0] = 1;
        for (uint i = 0; i < 3; i++) a[1] = 1;
        return test3(a);
    }
    function test3(uint[] memory a) public view returns (bool) {
        return a.length > 0 && a[1] == a.length - 1;
    }
}

pragma solidity ^0.8.0;

contract test272 {
    struct s {
        uint[] data;
        constructor() public {
            data = [1, 1];
        }
    }
    constructor() public {
        s memory s;
    }
    function test() public returns (uint) {
        return test3(s.data);
    }
    function test3(uint[] memory a) public view returns (uint) {
        return a.length > 0? a[1] : 1;
    }
}
