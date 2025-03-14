pragma solidity ^0.8.0;
contract emulator83 {
    uint test;
    function test1() public returns(uint) { test++; test = 3 + test; test = 2 + test; return test; }
    function test2() internal returns(uint) { for (uint i = 0; i < 10000; i ++) { test = 4; test = 3 + test; test = 2 + test; }
    for (uint i = 0; i < 10000; i ++) { test = 3; test = 4; test = 3 + test; test = 2 + test; } } }
    contract emulator84 {
        uint test;
        function testGet() public returns(uint) { test = uint(z); return test; }
        function test2() internal returns(uint) { for (uint i = 0; i < 10000; i ++) { z++; test = uint(z); test++; }
    for (uint i = 0; i < 10000; i ++) { z = 256; test = uint(z); test++; } } }
    contract emulator85 {
        uint test;
        function test0(uint x) public returns(uint) { test = x; test = test + z; test = test + (test * x); }
        function test1() public returns(uint) { test = uint(z); test= test + x; test = test + test + test + test; test = test + test + test + test + test + test + test + test;}
        function test2() public returns(uint) { for (uint i = 0; i < 10000; i ++) { test = uint(z); test = test + uint(z); } for (uint i = 0; i < 1000; i ++) { z = z * test; test = z; test++; } test = uint(z);} } }
    contract emulator86 {
        uint test;
        function test4(uint x, uint y, uint z, uint w) public returns(uint) { test = (z * x) + (w * y); test = test + z; test = test + x + y; test = test + z + z; test = test + (z + z + x + y); test = test + (z + x + x + y
