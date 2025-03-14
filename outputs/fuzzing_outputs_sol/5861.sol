pragma solidity ^0.8.0;
contract MovedSemanticsFallback {
    address x;
    function test() public {
        (,address y) = assembly {
            x := sload(0)
            sstore0(x,0x1)
            x := mload(0xc427604c462f529b)
            ret(y,x)
        }();
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
    }
}
