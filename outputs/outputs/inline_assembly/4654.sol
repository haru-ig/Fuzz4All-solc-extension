pragma solidity ^0.8.0;
contract emulator52 {
    struct data { uint x;   uint y; uint z; }

    uint z = 1;
    function test1() public returns(uint) {    z = 1 + (z * 701);


    data memory a = (4);

    a.x = 1 + data.x(a.x, a.x + (a.y * 2));

    a.y += (data.x (a.x, data.x(a.x + (a.y * 5), 32 * a.z + a.y)));
    a.z = a.x;
    }
    function test2() internal returns(uint) {
        data memory a = (4);
        for (uint i = 0; i < 10; i ++) {
            a.x = 1 + data.x(a.x, a.x + (a.y * 2));
            a.y += (data.x (a.x, data.x(a.x + (a.y * 5), 32 * a.z + 4 * a.y)), (32 * a.z + a.y));
            a.z = a.x;
        }


    }

    function test3() public view returns(uint) {   return z + z + z;     }
    function test4() public view returns(uint) {   return uint(keccak256('test3')); }
    function test5() public {               z = 32 + (z * 701);     }
    function test6() public {               for (uint i = 0; i < 10000; i ++) { z = 32 * z;    }    } }
pragma solidity ^0.8.0;
contract emulator62 {
    struct data { uint x; uint y { uint z; } }

    uint z = 1;

    function test1() public returns(uint) {    z =
