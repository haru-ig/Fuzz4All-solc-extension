pragma solidity ^0.8.0;
contract C5 {
    uint constant private x = 2**256 - 1;
    bool public y = 15 <= 2**256;
    bool public z = (16 <= x)-1;
}
pragma solidity 0.8.0;
contract C1 {
    uint constant public a;
    uint constant public b = 0x436d446772ff69d91dc2e6a51ce871023beeb374bc8f1edbb6bd24d5e5564217e848e1ab3705c29cc2a562f4cfed6a07ea35e973593c1560ae1b0489;
    uint constant public c = 123;
    uint constant public d = 123e7;
    uint8 constant public e = -1;
    uint constant public f = 20;
    uint96 constant public g = ~1;
    uint80 constant public h = 500;
    uint8128 constant public i = uint8128(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2718011716218e557febe6172002477f3e96dc76fe863f619fd176e34bdee18047ec271808d165938e2eaad1b99b273b9620288c58809fcff000000000000000000000000000000000000000000000000000000000000000000;

    address constant public j1;
    address constant public j2;
    address constant public j3;
    uint constant public k = 3;

    event X(uint8 x, uint y, uint z);
    function X() public {
        emit X(e, g, 0x44);
    }
}
