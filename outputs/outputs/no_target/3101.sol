pragma solidity ^0.8.0;
contract first{
    function f() public view returns(uint) {
        return 10;
    }
}
pragma solidity ^0.8.0;
contract second{
    function h() public view returns(uint) {
        return 10;
    }
}
pragma solidity ^0.8.0;
contract third{
    function i() public view returns(uint) {
        return 10;
    }
}
pragma solidity ^0.8.0;
contract fourth{
    function test3() public view returns(uint) {
        return 10;
    }
}
pragma solidity ^0.8.0;
contract fourth{
    function test4() public nonReentrant view returns(uint) {
        return 10;
    }
}
pragma solidity ^0.8.0;
contract fourth{
    function test5() public view, nonReentrant returns(uint) {
        return 10;
    }
}



pragma solidity ^0.8.0;
contract a{
    uint x;
    function g1(){
        x = 9;
    }
    function g2(){
        x = x / 0;
    }
    function g3(){
        address a = 10;
        x = a - 0;
    }
    function g4(){
        uint b = 99999999999999999;
        x = address(0) - b;
    }
    function g5(){
        uint8 a = 2;
        uint8 c = -2;
        x = uint(uint(uint(uint(uint(uint(uint(uint(uint(uint160(uint160(-0x12345678))))))))))) + 5);
        x = uint(uint.max) / uint(uint.max);
    }
    function g6(uint b) public returns(uint8){
        x = 100 - 655;
        x = 0.123e36;
        x = 0.01e184;
        x = 0x12345678;
        x = 0.7;
        x = 0xDEADBEEF;
        x = 0x5;
        x = 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        x = 0x2080000000000000000000000000000000000001522D7960EE86108AF87BE63091CDCE50C4667E2D60601C538D3472C05ED78209C1261ABBE7693A4772
