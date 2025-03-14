pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (uint e) {
        e = 32 - 256;
    }
}
contract E {
    function myFunction() pure public returns (uint160 e, uint e, uint e1) {
        e = -2;
        e1 = uint160(-2);
    }
}
contract B {
    function myFunction() public pure returns (uint256 x) {
        x = uint256(3);
    }
}
contract F {
    function myFunction() public pure returns (uint e) {
        e = address(this).balance + 1;
    }
}
contract G {
    function myFunction() public pure returns (uint f) {
        f = address(this).balance;
    }
}
contract D {
    function myFunction() public pure returns (uint d) {
        d = uint(0);
    }
}
contract H {
    function myFunction() public pure returns (uint e) {
        e = 128 + uint(256);
        e = uint(0) + uint(0);
        e = min(uint(0), uint(0), uint(1));
    }
}
contract I {
    function myFunction() public pure returns (uint8 i) {
        i = 1;
        i = 1 + 1;
        i = 5;
        i = max(uint(0), uint(0), uint(0));
        i = min(uint(0), uint(0), uint(0));
    }
}
