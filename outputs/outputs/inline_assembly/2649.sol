pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    function foo() public pure {
        uint x_tmp;
        uint w_tmp;
        21 * (z * x + ky)
            /
            (x * x)
            /
            (x * w)
            ==
            (
                x * (21 * w) + x * ky + 21 * w
            )
          ?
            (x_tmp = x, w_tmp = w)
            :
            (x_tmp = x * ky, w_tmp = 21 * w)
    }
}
