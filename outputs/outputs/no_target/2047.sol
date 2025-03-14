pragma solidity ^0.8.0;
contract CompiledContract{
    function f() public pure {

        uint256 x = 0;
        assembly {x := 1}
        uint256 y = 0;

        x = y;
    }
}
contract ModificationsRevert1 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 2;
        b = _b;
         uint128 y = 0;

        a = a - 170;
        uint128 x = max(140, 170);
        b = x;
    }
}
contract ModificationsRevert2 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 3;
        b = _b;
    }
}
contract ModificationsRevert3 {
    uint256 public a;
    string public b;
    constructor(string memory _b) public {
        a = 4;
        uint256 _number = 3425;
    uint256 x = (_number + 584454844444444444444);
    b = uint2str(x * 4);
    }
}
contract ModificationsRevert4 {
    uint256 public a;
    string public b;
    bool public c;
    constructor(bool _c) public {
        a = 1;
        b = "String";
        c = _c;
    }
}
contract ModificationsRevert5 {
    uint256 public a;
    string public b;
    constructor(uint256 _a, uint256 _b) public {
        a = _a;
        b = _b.toString();
    }
}
contract ModificationsRevert6 {
    uint256 public a;
    string public b;
    constructor(
