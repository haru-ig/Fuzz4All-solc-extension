pragma solidity ^0.8.0;
contract C {
    uint private c;
    uint public D;
    uint[] Darray;
    function f() public {
        if (c > 2) {
            c += 1;
        }
    }
    function g() public view {
        require(Darray[0] < Darray[1]);

        Darray[1] += 1;
    }
}
