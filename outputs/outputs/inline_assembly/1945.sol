pragma solidity ^0.8.0;
contract NewY {
    uint256 public constant x = 123;
    uint256 public constant y = 0;

    function b() public {}

    function aot() public pure {
        b();
    }

    function n(uint256 k) public returns(uint256) {
        k = k * x * y / (x+1) + x + y;
        while(1!= k) {

            uint256 y2 = y * 2;
            uint256 x2 = x * 3;
            x = k / x2;
            y = k / y2;
            k = x*x + k;
        }
        return x;
    }
}
