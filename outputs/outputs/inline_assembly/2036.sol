pragma solidity ^0.8.0;
contract SimpleY6 {
    function f() public view returns (uint256){
        b1();
        b3();
        b2();
        b1();
        b2();
        b3();
        return (b1() * b1() * b1() * b1()) + uint256(b3());
    }
    function b1() private {
        if(b[x] == 0){
            b0();
            b4();
            b1();
            if (b >= 1) {
                c;
            }
        }else{
            b0();
            b4();
            b1();
            b4();
            b2();
            b3();
            if(b >= 1) {
                c;
            }
        }
    }
    function b2() private {
        if(b[x] == 0){
            b0();
            b3();
            b1();
            b5();
            if (b >= 1) {
                c;
            }
        }else{
            b0();
            b3();
            b1();
            b1();
            b3();
            b4();
            b5();
            if(b >= 1) {
                c;
            }
        }
    }
    function b3() private {
        if(b[x] == 0){
            b1();
            b1();
            b5();
            b5();
            if (b >= 1) {
                c;
            }
        }else{
            b1();
            b1();
            b4();
            b5();
            b4();
            b2();
            b2();
            if(b >= 1) {
                c;
            }
        }
    }
    function b4() private {
        b0();
        b5();
    }
    function b5() private {
        b2();
    }
    function b0() private {
        b;
    }
    function c() private {}
}
