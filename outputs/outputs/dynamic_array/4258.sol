pragma solidity ^0.8.0;

contract test {
    struct St { uint a; uint b; }

    St[] aArray;
}
contract B {
    function foo() public payable returns (bool) {
        uint i = aArray.length;
        aArray.push(St(3, 4));
        uint z = aArray[0].a;
        return true;
    }
}
contract A is G, B {
    function test() public {
        uint z;
        St memory x;
       if (x == aArray[z]) {
           z = (aArray[z]).b;
       }
       else {
           z = 0;
       }
        emit test(x.a + aArray[z].b);
    }
}
