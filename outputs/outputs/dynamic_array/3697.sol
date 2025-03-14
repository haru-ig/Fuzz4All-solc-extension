pragma solidity ^0.8.0;
contract D {
    uint16 a;
    function f() public {
        a = 256;
    }
}

pragma solidity ^0.8.0;
contract D {
    uint16 a[2] = [256, 257];
    function f() public {
        delete [] a;
    }
}
