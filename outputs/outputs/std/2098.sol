pragma solidity ^0.8.0;
contract Mutated_1_3_0 {
    struct MyStruct {
       uint x;
       uint y;
    }

    function xdiv(MyStruct storage s) public pure {
        s.x /= 2;
    }

    function xmul(MyStruct storage s) public pure {
        s.x *= 2;
    }
}
