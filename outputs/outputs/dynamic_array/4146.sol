pragma solidity ^0.8.0;
contract C {
    uint[] memory x;
    uint memory D;
    function f() public {
        uint x_temp = x[1];
        D = 2;
        x[1] += x[0];
        x_temp = x[1];
        while ((x_temp > 0) && (x[0] > 0)) {
            x[i] += x[0];
            x_temp--;
            D += 1;
        }
        x_temp = x[1];
        while ((x_temp > 0) && (x_temp > 1)) {x_temp--;}
        while ((x_temp > 0) && (x[0] > 1)) {x_temp--;}
        x_temp = x[1];
        while ((x_temp > 1)) {x_temp--;}
    }

    modifier onlyInit() {
        if (a!= 1) revert("a was not initialized correctly");
        _;
    }
    int a = 20;
}
