pragma solidity ^0.8.0;
library MyLib {
    struct MyStruct {
        uint256 a;
    uint256 b;
   	uint256 c;
   	uint256 d;
   	uint256 e;
   	uint256 f;
   	uint256 g;
   	uint256 h;
   	uint256 i;
   	uint256 j;
    }
    function myTest(MyStruct memory s) public pure returns(uint2) {
    	s.a += s.b;
        return s.c;
    }
}
contract C {
    using MyLib for MyLib.MyStruct;
    I3a _d;
    uint256 _e;
    mapping((uint256) => uint256) _f;
    uint8[26]= repeatString("x", 26);

    constructor(uint d) public {

        _e = d * 2 ** 21;

    }
    function test() public {
        MyLib.MyStruct s = MyLib.MyStruct(_e);


        uint256[] memory b = s.bar();
    }
    function test2() public {
        MyLib.MyStruct s = MyLib.MyStruct(_e);
        uint s2 = s.foo()[0];
        uint s3 = s.bar()[0];
    }
    function test3() public {
       s.foo()[0] += s.bar()[0];
    }
    function test4() public {
        MyLib.MyStruct s = MyLib.MyStruct(_e);
        uint256[] memory a = s.foo();
        s.bar();
    }
    function test5() public {
        MyLib.MyStruct s = MyLib.MyStruct(_e);
        s[123] += s[678];
    }
    function test6() public {
        MyLib.MyStruct s = MyLib.MyStruct(_e);
    s[123] = s.bar();
    }
    function test7() public {
        MyLib.MyStruct s = MyLib.MyStruct(_e);
        uint256[] memory a = s.foo();
        s.bar() = s[123];
    }
    function test8() public {
        MyLib.MyStruct s = new MyLib.MyStruct(_e);
        uint256 i = s.foo()[0][0];
        uint32 j = s
