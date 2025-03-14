pragma solidity ^0.8.0;
contract R5 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public {
        uint temp = a;
        a = b;
        b = temp;
    }
    function multi() public {
        a -= 2;
        a++;
        a /= 100;
        a++;
        a++;
        b += a;
        uint temp = a;
        a += b;
        b = temp;
    }
    function get() public view returns (uint) {
        return a + a*a + a*a*a - b + b + b;
    }
}

pragma solidity ^0.8.0;
contract R6 {
        uint public v;
    constructor(uint _x) public {
        v = _x;
    }
    function get() public view returns (uint) {
        return v;
    }
}

pragma solidity ^0.8.0;
contract R7 {
        uint public v;
    constructor(uint _x) public {
        v = _x;
    }
    function get() public view returns (uint) {
        return v;
    }
}

pragma solidity ^0.8.0;
contract R8 {
        uint public v;
    constructor(uint _x) public {
        v = _x;
    }
    function get() public view returns (uint) {
        return v;
    }
}

pragma solidity ^0.8.0;
contract R9 {
    uint public value;
    uint256 public value2;
    address public addr10;
    address public addr11;
    constructor(uint _x) public {
        value = _x;
        value2 = _x;
        addr10 = 0xF6A34C296b522B746F31323c4E7CF9BD7bB68253;
        addr11 = 0xA5632c667337F7020369054546056F93f43c7628;
    }
    function get() public view returns (uint) {
        return value;
    }
    function get2() public view returns (uint256) {
        return value2
