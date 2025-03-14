pragma solidity ^0.8.0;
contract InlineAssembly6{
    uint a = 0;
    function setA() public pure returns(uint) {
        uint b ;
        assembly {
            b := 2000000000
        }
        a = b;
        return b;
    }
    function testA() public pure returns(uint) {
        uint c ;
        uint d ;
        if(a == 0) {
            c := 1234;
        }
        assembly {
            c := a
        }
        if (a!= b) {
            d := a+1234;
        }
        assembly {
            d := b
        }
        if(c==d) return true;
        return a;
    }
}
