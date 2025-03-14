pragma solidity ^0.8.0;
library Address{
    function f() internal pure returns (bytes memory) {
        return "2";
    }
}
address addr = address(0xABC);
library Impure {
    function f() internal pure returns (bytes memory) {
        return "3";
    }
}
address addr = address(addr);
address addr = address(addr);
address addr = address(address(addr));
function f() internal pure returns (bytes memory) {
    return "4";
}

struct I {
    uint x;
}
pragma solidity ^0.8.0;
library Impure {
    function f(I memory) public pure returns (bytes memory) {
        return "5";
    }
}
struct I{
    address addr;
}
function f(I memory) public pure returns (bytes memory) {
    return "6";
}
