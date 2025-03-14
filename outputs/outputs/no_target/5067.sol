pragma solidity ^0.8.0;


contract C52_bug405548381470 { uint88 b = 0xffffffff; function f() public { uint88 a = uint88(((uint88(uint(b)) | uint88(uint(b))) / 100)); } }

pragma solidity ^0.8.0;
modifier only_one_of_the_above( uint88 a, uint88 b, uint88 c, uint88 d, uint88 e, uint88 f, uint88 g, uint88 h, uint88 i, uint88 j ) { uint88 z = uint88(block.number * 500); }
modifier only_one_of_the_above_one_times() { }
modifier only_one_of_the_above_three_times() { }
