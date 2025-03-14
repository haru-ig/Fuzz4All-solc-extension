pragma solidity ^0.8.0;
contract B1 { function g() public pure { unchecked { assert (0xfffffffffffffffffffffff < 0xfffffffffffffffc); } unchecked { assert (0xfffffffffffffffc == 65535); } } }

pragma solidity ^0.8.0;
contract B1 { function g() public pure { unchecked { assert (0 <= 0); } unchecked { assert (1 >= 0); } } }
contract B3 {
    uint u;
    function test(uint a) public {
        u += a;
        unchecked { assert (u >= 0); unchecked { assert (1 <= u); } safeAssert (); }
    }

    function safeAssert () internal {
        unchecked { assert (u >= 0); unchecked { assert (1 <= u); } }
    }
}
