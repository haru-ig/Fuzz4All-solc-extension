pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity {
    uint public x;
    uint public y;
    uint public z;
    function semanticallyEquivalentX() public {
        x = 1;
        uint x_tmp = 2*x + 4*y;
        uint y_tmp = 8*(x_tmp*x_tmp) + (2*x*y) + 4;
        uint z_tmp = (2*x_tmp*x_tmp) + (2*x*y) + (8*(y_tmp*y_tmp));
        y = y_tmp*z/z_tmp;
    }
}
