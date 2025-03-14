pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint y;
    uint z;
    function f() view public {
        x = 0;
        uint _tmp;
        uint _tmp1 = x / y;
        if ((_tmp1 * 5) - y!= 18) {
            assembly {
                y := x
                x := 0
            }
        }
    }
}
