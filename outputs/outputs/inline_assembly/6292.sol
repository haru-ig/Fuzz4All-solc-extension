pragma solidity ^0.8.0;
event Log(address _a, address _b);
library Lib {
    event Log(address _a, address _b);
    function f() public {
        assembly {
            g(1, a)
            g(1, b)
            g(a, 1)
            a
        }

        Log(address(1), m);
        if (true)
            return (m - 1);
    }
    function g(uint256 a, uint256 b) internal pure {
        Log(a, b);
    }
}
contract MixedContactsExample17{
    function main(uint256 a) public view returns (uint256 ){
        if (a == 1) return 1;
        (uint256 b,uint256 c) = Lib.f();
        if (c == a) return b;
        return b;
    }
}
