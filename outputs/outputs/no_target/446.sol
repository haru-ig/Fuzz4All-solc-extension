pragma solidity ^0.8.0;
struct Semantic {
    uint16 c;
}
function test(Semantic memory s) public pure returns (uint16) {
    return s.c;
}

pragma solidity ^0.8.0;
struct Semantic {
    address a;
    address b;
    address c;
    address d;
}
function test(Semantic memory s) public view returns (uint16) {
    return s.c;
}
