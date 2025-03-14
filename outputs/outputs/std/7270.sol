pragma solidity ^0.8.0;
contract Mutation2
{
    uint[] a;
    uint[] b;
    uint x;
    function m1() public {
        x = a[0];a[0] = x+10;
        b = a; b[0] = 0;
        b[1] = 30;
        a[1] = 3;
    }

    function m2() public { x = (a[0]+a[1])/2; b[0] += x; b.push(0); }
    function m3() public { b = a; }

    function getA() public view returns(uint[]) {
        return a;
    }

    function changeA() public {
        x = 5;
        a[0] = x+10;
    }

    function getB() public view returns(uint[] memory){
        uint[] memory local = b;
        return local;
    }

    function changeB() public {
        a = b; a[0] = 0; a[1] = 3;
    }
}
