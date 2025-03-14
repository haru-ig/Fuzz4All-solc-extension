pragma solidity ^0.8.0;
contract Test {
    struct S {
        uint my_uint;
        uint160 my_uint160;
        uint128 my_uint128;
    }
    S public s = S(5, 8, 0);
   function set(uint128 my_uint128, uint total, uint my_uint, uint160 my_uint160) public {
        s.my_uint = my_uint;
        s.my_uint160 = my_uint160;
        s.my_uint128 = my_uint128;
        s.total = total;
    }
}
