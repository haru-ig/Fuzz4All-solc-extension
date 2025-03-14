pragma solidity ^0.8.0;
contract MutatedSemantics {
    address x;
    function test() public {
        address a;
        a = address(this);
        uint a2;
        uint b;
        uint c = 3;
        uint d;
        uint  f;
        uint e = 100;
        b = b+c;
        a2 = (a < e);
        b = b;
        b = b < a;
        c = a + 1;
        c = a + c;
        c |= 1;
        c ^= a;
        c &= b;
        c <<= a;
        c >>= a;
        c >>= a;
        c >>= c;
        a || a == 0;
    }
    function test2() public {
        address a;
        a = address(this);
        uint a2;
        uint b;
        uint c;
        uint d;
        uint  f;
        uint e = 100;
        b = b+c;
        a2 = (a < e);
        b = b;
        b = b < a;
        c = a + 1;
        c = a + c;
        c |= 1;
        c ^= a;
        c &= b;
        c <<= a;
        c >>= a;
        c >>= a;
        c >>= c;
        b = (a & a)+1;
        c >>= a;
        c >>= a;
        c >>= a;
        c >>= c;
        b <<= a;
        c <<= a;
        b >>= a;
        b <<= c;
        a <<= d;
        a >>= a;
        a <<= b;
        c = a + 1;
        c = a + c;
        e = a + 1;
        a += c;
        b >>= a;
        c >>= a;
        c >>= b;
        c >>= c;
        a <<= a;
        b = a + a;
        a >>= a;
        c >>= a;
        c >>= b;
        a <<= a;
        a = c;
        if (((!(a&a)!=0 || a>a+a+a || a<a+a+a+a))));
        b >>= a;
        c >>= a;
        c >>= b;
        c >>= c;
        if ((c==b) && (a==e))
        {
          b = b<a;
          b == ((a&a)==a);
          c ++;
        }
    }
}
interface Token {
    function transfer(address from, uint256 to, uint256 value) external returns(bool);
}

pragma solidity ^0.8.0;
contract MutatedSemantics {
