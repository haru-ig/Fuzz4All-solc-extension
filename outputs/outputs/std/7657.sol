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
}
