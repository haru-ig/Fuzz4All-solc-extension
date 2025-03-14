pragma solidity ^0.8.0;
contract Semantic {
    uint a;
    uint b;
    uint c;
    function test() public {
        a = 3;
        b = 2;
        c = 1;
        b = 1;
        if(c > a) c = a;
        if(a < b) b = d;
        a = a+1;
        b = 3;
        if(a < c) c = b;
        a = a+1;
        b = b+1;
        for(uint i=0; i < x.length; i+=1){
            if(x[i][b] < x[i][a]){
                b = 3;
                x[i][b] = x[i][b]+1;
                x[i][a] = x[i][a]+1;
            }
        }
    }
}
