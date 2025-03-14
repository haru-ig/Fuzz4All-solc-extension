pragma solidity ^0.8.0;
contract Mutation {
    function test() public {
        uint64 a;
        uint64 b;
        uint64 c;
        uint64 d;
        a = 3;
        b = a;
        b = b + 2;
        b = b - 1;
        c = 3;
        uint64 e = uint64(2);
        b = a;
        d = c;
        if(c < 3 || b < 3){
            e = c;
            b = 2;
         }
    }
}
pragma solidity ^0.8.0;
contract FallbackMutated {
    function test() public {
        a = 3;
        if(b >= 3){
            b = b + 1;
            a = 1;
         }
    }
}
