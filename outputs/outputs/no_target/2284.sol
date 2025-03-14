pragma solidity ^0.8.0;
contract teste {
    bool value = true;
    uint public myNumber;
    uint public expected;
    Constructor public constructor();
    function test1() {
        myNumber = 0x123409876543098765430987654309876543;
    }


    function test2() {
        constructor();
    }

    function test3() public {
        uint myValue = myNumber;
        myNumber = 0x987654309876543098765430987654309876543098765430987654309876543;
    }

    function test4() public {
        uint myValue = myNumber;
        myNumber = 0x9876543098765430987654309876543LL;
    }
    function test5() public {
        value = false;
        expected = myNumber ^ 0xFEDCAB890;
        assertEqual(expected, myNumber);
        value = true;
    }
    function test6() public {
        expected = 123456789;
        assertEqual(expected, myNumber);
        myNumber = 0x1234098765430987876543098765430987654309876543098765430987654309876543;
    }
    function test7() public {
        expected = -456789;
        assertEqual(expected, myNumber);
        myNumber = 0x1234098765430987654309876543098765430987654309876543098765430987654309876
