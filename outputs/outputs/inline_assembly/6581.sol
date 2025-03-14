pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample92 {
    uint256 a,b,c,d,e;
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

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample96 {
    uint256 a,b,c,d,e;
    function doSomething() public {
        a = a + 1;
        b = ~a;
        (b) += 10;
        (b) *= 2;
        (c) += a;
        (d) += b;
        (e) += c;
        (e) -= e;
    }
}
    }
