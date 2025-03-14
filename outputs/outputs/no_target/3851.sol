pragma solidity ^0.8.0;
contract S5 is S4 {
        uint private a;
        uint256 private b;
    constructor() public {
        a = a + 1;
        b = a + 2*a + (a + 3)*a*(a + 3);
    }
    function change(uint256 value) public {
        uint256 x = a + value - 1;
        x = a + value - 2;
        a = a + 1;
    }
    function notEnoughChange(uint256 value) public {
        uint256 x = a + value - 1;
        x = a + value - 2;
        b = a + a + (a + 3)*a + b + a + value;
    }
    function call(uint256 value) public {
        uint256 z = a + value + a + a;
        z = a + value + a + a + a;
        a = a + a + a;
    }
}
