pragma solidity ^0.8.0;
contract Z {
    function f() public returns (uint) {
        bool f;
        f = (uint(true)!= 1);
        f = (uint(false)!= 0);
        f = (uint(-1) >= 1);
        f = (uint(-1) <= 0);
        f = (uint(-1) < 1);
        f = (uint(-1) <= 1);
        f = (uint(2**16+1)!= 2 ** (16+1));
        f = (uint(type(uint24).max)!= type(uint24).max);
        f = (uint(type(uint).max)!= 2**256-1);
        f = (uint(address(0)) < type(uint).max);
        var iu = uint16(uint(address(0)).code());
        f = (uint(iu)) == 2**255-1;
        iu = uint16(uint(0xffffffff00000000000000000000000000000000000000000000000000000000));
        f = (uint(iu)) > 2**256-1;
    }
}
