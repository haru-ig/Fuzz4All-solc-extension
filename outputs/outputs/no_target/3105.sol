pragma solidity ^0.8.0;
contract third is fourth{
    function h() public pure returns(uint) {
        return 10;
    }
}
contract fourth is third{
    function r() public pure returns(uint) {
        return 10;
    }
}
contract first{
    function a() public pure returns(uint) {
        return 10;
    }
}
contract second{
    function b() public pure returns(uint) {
        return 10;
    }
}
contract mutant{
    function d() public pure returns(uint) {
        return 10;
    }
}
contract fifth{
    function g() public pure returns(uint) {
        return 10;
    }
    function h() public pure returns(uint) {
        return 20;
    }
    function r() public pure returns(uint) {
        return 30;
    }
    function g() public pure returns(uint) {
        return 40;
    }
    function d() public pure returns(uint) {
        return 60;
    }
}
 contract sixth {
     function e() public pure returns(uint) {
         return 80;
     }
 }
 contract seventh{
     function f() public pure returns(uint) {
         return 7;
     }
 }
pragma solidity ^0.8.0;
contract eighth{
    function g() public pure returns(uint) {
        return 16;
    }
 }
contract ninth {
    function g() public pure returns(uint) {
        return 6;
    }
}
contract tenth {
    function r() public pure returns(uint) {
        return 9;
    }
}
contract eleventh {
    function d() public pure returns(uint) {
        return 11;
    }
}
contract twelveth{
    function b() public pure returns(uint) {
        return 13;
    }
}
contract thirtenth {
    function b() public pure returns(uint) {
        return 6;
    }
}
contract fortyth {
    function b() public pure returns(uint) {
        return 4;
    }
}
contract fiftyth {
    function b() public pure returns(uint) {
        return 3;
    }
}
contract fourteenth{
    function b() public pure returns(uint) {
        return 6;
    }
}
contract eight {
    function f() public pure returns(uint) {
        return 3;
    }
}
contract seventeen {
    function f() public pure returns(uint) {
        return 3;
    }
}
contract sixteen {
    function d() public pure returns(uint) {
        return 4;
    }
    function f() public pure returns(uint) {
        return 2;
    }
}
contract fifteen {
    function c() public pure returns(uint) {
        return 13;
    }
    function f() public
