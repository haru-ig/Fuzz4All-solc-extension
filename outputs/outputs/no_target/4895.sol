pragma solidity ^0.8.0;
contract B2 { function f() public pure { assert (0xffffffffffffffffffffff < 0xffffffffffffffffffffff); } }
contract B3{function f() public pure { assert (0xfffffffffffffffffff < 0xfffffffffffffffffff); }}
contract B4 { constructor () { assert (0xffffffffffffffffffffffff < 0xfffffffffffffffffffffffffff); }}
contract B5{ constructor () { assert (0xfffffffffffffffffffffffffffffffffff < 0xfffffffffffffffffffffffffffffffffff); }}
contract B6{constructor()public pure
    {assert((true==false) < (false==false));
    assert((false==true) < (true==true));
    assert((true==false) < (false==true));
    assert((false==true) < (true==false));
    assert((true==1) < (false==1));
    assert(1 < (true==1));
    assert(1) < (false==1);
    assert(0 >= (true==0));
    assert(9758487047892114679 < (false==8728487047892114679));
    assert(0 <= (true==true));
    assert(9758487047892114679 < (false==8728487047892114679));
    assert(12 < (true==12));
    assert(0 >= (true==14));
    assert(12 > (false==true));
  }
 }
