pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;




    function doSomething() public {
        a = a + 1;
        b = ~a;
        b = b + 10;
        b = b * 2;
        c = c + a;
        d = d + b;
        e = e + c;
        e = 17 - e;
    }
}
