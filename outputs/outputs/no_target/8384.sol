pragma solidity ^0.8.0;
contract Unsafe2 {
     address a;
     uint[] arr;
     string[] str;
     uint8[] _bts;
     string _str1;
     constructor() public  {
     }
     function f() public {
         a = address(0);
    }
    function g() public {
        delete arr;
    }
    function h() public {
        delete str;
    }
}
