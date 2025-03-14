pragma solidity ^0.8.0;
contract CoC{
    function s(uint a) public {
        function s2(uint a) private {
            if (a > 2) {
                s(1+a);
            } else {
                s(a+1);
            }
        }
        s2(a);
    }
}

pragma solidity ^0.8.0;
contract CoC{
    constructor() {
        uint a;
        while (a > 2) {
            uint a0 = a;
            a = a+1;
        }
    }
}

pragma solidity ^0.8.0;
contract CoC{
    function s() public {
        uint a;
        while (a < 2) {
            uint a0 = a;
            a = a-1;
        }
    }
}

pragma solidity ^0.8.0;
contract CoC{
    function s(uint a, uint b) public {
        uint a0;
        uint a1;
        uint a2;
        uint a3;
        uint a4;
        uint a5;
        uint a6;
        uint a7;
        uint a8;
        uint a9;
        uint a10;
        uint a11;
        uint a12;
        uint a13;
        function s4(uint a) public {
            a0 = a;
            a1 = a+1;
            a2 = a+2;
            a3 = a+3;
            a4 = a+4;
            a5 = a+5;
            a6 = a+6;
            a7 = a+7;
            a8 = a+8;
            a9 = a+9;
            a10 = a+10;
            a11 = a+11;
        }
        s4(a);
        s4(b);
        uint s103 = a10*10 + b12;
        uint s113 = a11*10 + b13;
        uint s114 = a12*10 + b14;
        uint s123 = a13*10 + b15;
        uint s124 = a14*10 + b16;
        uint s208 = a0+1+2;
        uint s209 = a0+2+3;
        uint s213 = a1*10 + b2;
        uint s214 = a2*10 + b3;
        uint s304 = a3*10 + b4;
        uint s310 = a4
