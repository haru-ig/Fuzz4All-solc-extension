pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    uint256 a_1;
    uint256 b_2;
    uint256 c_3;
    uint256 d_4;
    uint256 e_5;
    uint256 f_6;
    constructor() {
        a_1 = b_2 = c_3 = d_4 = e_5 = f_6 = a_1 + b_2 + b_2 + b_2 + 1;
    }
    function doSomething() public {
        a_1 = a_1 + 4;
        b_2 = b_2 + 7;
        c_3 = c_3 + d_4;
        d_4 = 21;
        e_5 = e_5 + a_1;
        f_6 = e_5 + c_3;
    }
}
