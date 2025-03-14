pragma solidity ^0.8.0;
contract g1 {
	event log1(uint);
     function h() public {
            log1(uint(-1));
            log1(uint8(-1));
            log1(uint16(-1));
            log1(uint32(-1));
            log1(uint64(-1));
            log1(uint128(-1));
     }
}

pragma solidity ^0.8.0;
contract h1 {
    event log2(uint);
    function g() public {
            log2(uint8(-1));
            log2(uint16(-1));
            log2(uint32(-1));
            log2(uint64(-1));
            log2(uint128(-1));
    }
}
interface d1 {
    function e() external pure returns(int8);
}
contract g1d is d1{
    event log3(uint);
    function h() public {
            log3(uint8(-1));
            log3(uint16(-1));
            log3(uint32(-1));
            log3(uint64(-1));
            log3(uint128(-1));
    }
}
interface i1 {
    function f() external pure returns(int);
}
contract h1i is i1{
    event log4(uint);
    function g() public {
            log4(uint8(-1));
            log4(uint16(-1));
            log4(uint32(-1));
            log4(uint64(-1));
            log4(uint128(-1));
    }
}
