pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract CoC{
    struct S1{
        uint val1;
        uint val2;
    }
    function g3(S1 memory s1) private {
        s1.val1 = s1.val1 + s1.val2 + (s1.val1 - s1.val2);
    }
}
