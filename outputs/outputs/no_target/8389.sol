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
        arr = new uint[](0.1);
    }
    function h() public {
        arr = new uint[](new uint[](0.1));
    }
    function i() public {
        arr = new uint[](2);
    }
}
