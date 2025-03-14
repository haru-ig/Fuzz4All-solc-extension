pragma solidity ^0.8.0;
contract B {
    A a;
    function h1() external returns(int, address) {
        (int,address) res = b(10,10);
        return res;
    }
    int c;
    function h2() external returns(int) {
        c-=1;
        if(c>0) {
            (int) res = a.b(d, r);
            return res;
        }
        c-=1;
        return 0;
    }
    string x;
    function h3(string storage y) external returns(int) {
        (int) res = x.length();
        return res;
    }
    function h4() external returns (int[] memory) {
        (int[] memory a) = a.b(d, r);
        return a;
    }
    constructor() public{
        a = new A();
    }
}
