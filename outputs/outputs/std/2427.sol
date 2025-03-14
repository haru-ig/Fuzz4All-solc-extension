pragma solidity ^0.8.0;
contract Contract {
    uint[] arr;

    constructor() {
        arr = [0,0];
    }

    function getEquiv(uint a) public pure returns (uint) {

        if(a == 0) return 0;
        else {
            uint pow = 4;
            uint t = a, m = 0;
            while( t > 0 ) {
                t = t / 2;
                m = m * 2;
            }
            uint result = m;
            result*= pow;
            return result;
        }
    }

    function add(uint x) public {
        arr = arr.add([x,x]);
    }

    function sub(uint x) public {
        arr = arr.sub([x,x]);
    }

    function test() public {
        uint c;
        uint[] memory equiv;
        c = getEquiv(2);
        equiv = arr;
        add(c);
        c = getEquiv(2);
        equiv = arr;
        sub(c);
        c = getEquiv(16777216);
        equiv = arr;
        mul(c);
        c = getEquiv(16777216);
        equiv = arr;
        div_rem(c);
        equiv = arr;
        mod(c);
        equiv = arr;
        madd(c);
        c = getEquiv(16777216);
        equiv = arr;
        msub(c);
        c = getEquiv(2);
        equiv = arr;
        mod(c);
        c = getEquiv(2 + 67108864);
        equiv = arr;
        sqr(c);
        c = getEquiv(16777216);
        equiv = arr;
        sqrt(c);
        c = getEquiv(16777216);
        equiv = arr;
        ln(c);
        c = getEquiv(2);
        equiv = arr;
        log(c);
        c = getEquiv(2);
        equiv = arr;
        log2_approx(c);
        c = getEquiv(0);
        e
