pragma solidity ^0.8.0;
contract C {
    function h() public pure returns (uint8 _f) {
        C.g().g();
        return 5;
    }
}
