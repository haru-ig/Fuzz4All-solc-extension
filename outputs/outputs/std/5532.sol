pragma solidity ^0.8.0;
contract Mutate23Test {
    address immutable a;
    address immutable b;
    address immutable c;
    constructor (address b_, address c_) public {
        a = address(0x32c3a72c8227165E5399D16D9F090AE2871980eA);
        b = address(0xeab88b1043d5879308251823dadee4d536c60370);
        c = address(0x3464e503625576a9E47f3b0816082C7b4117B787);
    }
    function test1() public {
        assert(a==b);
        assert(a==c);
        assert(address(0x0)==ed);
    }
    function test2() public {
        address[] memory ctemp = [a,b,c] ;
        c = a;
        a = b;
        b = ctemp[0];
    }
    function test3() public {
        address[] memory cnew1 = [address(0x80),b,c];
        address[] memory cnew2 = [address(0x81),b,c];
        b = a;
        c = cnew1[1];
        a = a;
    }
}
