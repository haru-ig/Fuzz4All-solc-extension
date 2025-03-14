pragma solidity ^0.8.0;
contract Mutated2 {
     uint[] arr;
     string[] str;
     uint8[] _bts;
     string _str1;
     constructor() public  {
     }
     function f() public {
        delete arr.0;
        delete arr[0];
        delete arr[-1];
        delete arr[1000];
        delete str[0];
        delete str("0");
        delete str(32 bytes);
        delete str("0x32");
        delete _bts[0];
        delete _bts(32 bytes);
        delete _bts("0x32");
        delete _str1[0];
        delete _str1(32 bytes);
        delete _str1("0x32");
        delete str;
        delete arr;
     }
}
