pragma solidity ^0.8.0;
contract modifierWithParam2 {
    uint x;
    function f(uint y) public returns (uint) {
        x = y;
        uint x2 = x * x;
        if (x2 == 0) {
            revert();
        }

        return x2;
    }
    function g() public view returns (uint) {
        uint x2 = x * x;
        if (x2 == 0) {
            revert();
        }

        (x = x2, x = (x - 1));
        x = 1 + (x * x2);
        x = (x - 1);
        x = 1 + (x * x);
	return 2;
    }
}
