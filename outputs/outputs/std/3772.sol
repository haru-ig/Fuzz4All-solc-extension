pragma solidity ^0.8.0;
contract Multiply{
    function multiply(uint a, uint b) internal pure returns (uint product){
        return a*b;
    }
}

pragma solidity ^0.8.0;
contract HelloWorld {
     function sayHello(uint i) private view returns('Hello') {
        return 'Hello';
     }
}
pragma solidity ^0.8.0;
contract HelloWorld {

    string name;
    modifier sayHello(){
        name = sayHello().name;
        _;
    }
    function hell01(int a,  uint b) private sayHello returns (int c) {
        c = a+b;
        c = c*2;
        c = c/2;
        c = c**2;
        return c;
    }
    function hell02(uint s, bool b, int a, uint x) private
    returns (uint) {
        return x + 1 + a + b + s + s + s;
    }
    function hell03(uint x, bool) private
    returns  (uint) {
        uint ret = 1 + x + uint(uint);
        uint x2 = ret + uint(uint);
        uint x3 = x2 - 1 - uint(uint);
        uint x4 = x3 + uint(uint);
        uint x5 = x4*uint(uint);
        uint x6 = x5*uint(uint);
        uint x7 = x6/2;
        uint x8 = x7 * 2;
        uint x9 = 0;
        uint x10 = 2;
        return x;
    }
}
