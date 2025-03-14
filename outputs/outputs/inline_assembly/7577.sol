pragma solidity ^0.8.0;
contract Example {
    uint constant initialx = 0;
    uint constant initialy = 0x1234;
   function f() public returns (uint) {
       uint tmp1 = uint24x4(initialx, 42);
       uint tmp2 = uint24x4(initialx, tmp1);
       uint tmp3 = uint24x3(initialy, 0x1234);
       tmp2 = uint24x4(1, 42, initialy);
       uint tmp6 = 2;
       tmp6 = tmp3 + tmp2 + tmp1 + 0x1234 + initialy;
       uint tmp8 = uint24x3(initialy, tmp3);
       uint tmp9 = uint24x4(initialx, initialx, tmp8);
     return tmp2 + 42 + tmp1 + 0x1234 + initialy + 1 + uint24x4(1, 42) + tmp2 + tmp3 + initialy;
   }
}


pragma solidity ^0.8.0;
contract Example {
    uint constant initialx = 0;
    uint constant initialy = 0x1234;
   function f() public returns (uint) {
       uint tmp1 = uint24x4(initialx, 42);
       uint tmp2 = uint24x4(initialx, tmp1);
       uint tmp3 = uint24x3(initialy, 0x1234);
       uint tmp4 = uint24x4(1, 42, initialy);
       uint tmp5 = 2;
       tmp6 = tmp3 + tmp4;
       uint tmp7 = 42;
       tmp6 = tmp3 + tmp4 + initialy;
       uint tmp8 = uint24x3(initialy, tmp3);
       uint tmp9 = uint24x4(initialx, initial
