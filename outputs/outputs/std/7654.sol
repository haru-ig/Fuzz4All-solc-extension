pragma solidity ^0.8.0;
contract BadCase11 {
    uint8[1] m;
}

pragma solidity ^0.8.0;
contract BadCase12 {
    uint8[1] m;
}

pragma solidity ^0.8.0;
contract MainContract {
    struct St {
        uint256 x;
        uint256 y;
        uint32 z;
    }
    function add3(St memory s) public {
        s.x += 3;
    }
    function sub3(St memory s) public {
        s.x -= 3;
    }
    function abs2(uint256 x) public pure returns (uint256 z) {
        z = x < 0? ~x : x;
    }
    function abs3(uint32 x) public pure returns (uint32 z) {
        z = x < 0? ~x : x;
    }
    function sub4(uint32 x, uint32 i) public pure returns (uint32 y) {
        if(i <= 0) return x;
        else return x - (x % i);
    }
    function mul4(uint32 x, uint32 i) public pure returns (uint32 y) {
        if(i <= 0) return 1;
        else return x * (i % 10)**(uint(31)-1);
    }
    function div4(uint32 x, uint32 i) public pure returns (uint32 y) {
        return x / (i  % 10)**(uint(31)-1);
    }
}
