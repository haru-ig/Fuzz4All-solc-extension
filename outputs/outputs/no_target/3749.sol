pragma solidity ^0.8.0;
contract E2 {
    bytes4 b;
    function f() public {
        require(b >= 42, "Wrong value returned");
    }
}

pragma solidity ^0.8.0;
contract E3 {
    uint256 a;
    uint256 b;
    function c() public {
        require(a < b, "Wrong value returned");
    }
}
pragma solidity ^0.8.0;
contract E4 {
    bytes32 a;
    bytes32 b;
    bytes4 c;
    bytes12 d;
    bytes12 e;
    function f() public {
        require(a == "0", "Wrong value returned");
    }
}
pragma solidity ^0.8.0;
contract E5 {
    uint256 a;
    uint8 b;
    function g() public {
        require(a > b, "Wrong value returned");
    }
}
pragma solidity ^0.8.0;
contract E6 {
    string a;
    uint20 b;
    function f() public {
        require(a > bytes(0).sub(uint8(0x00)), "Wrong value returned");
    }
}
pragma solidity ^0.8.0;
contract E7 {
    function g() public returns(int) {
        return 0;
    }
    function h() public returns(uint) {
        return uint(65535);
    }
}
pragma solidity ^0.8.0;
contract E8 {
    function i() public {
        bytes32 b = "0x00";
        uint256 x = 1 + 1;
        require(b < x, "Wrong value returned");
    }
}
pragma solidity ^0.8.0;
contract E9 {
    mapping(int => uint256) _map1;
    mapping(uint => int) _map2;
    mapping(uint => string) _map3;
    mapping(bytes4 => bytes12) _map4;
    mapping(address => uint256) _map5;
    mapping(uint => int) _map6;
    function j() public {
        uint256 a = 5;
        uint8 b = a;
        require(b == 6, "Wrong value returned");
    }
}
pragma solidity ^0.8.0;
contract E10 {
    int[] a;
    uint27 b;
    function k() public {
        b = 0x00000000000000000000000000
