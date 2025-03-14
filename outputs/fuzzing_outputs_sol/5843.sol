pragma solidity ^0.8.0;
contract MovedSemantics {
    uint a;
    uint b;
    uint c;
    address d;
    function test() public {
        a = 3;
        uint[100][100] memory x;
        b = 2;
        c = 1;
        d = address(0);
        c = 2;
        b = 1;
        a = 2;
        b = b+1;
        for(uint i=0; i < x.length; i+=1){
            if(x[i][b] < x[i][a]){
                if(x[i][b] == 2) d = address(0);
                b = 3;
                x[i][b] = x[i][b]+1;
                x[i][a] = x[i][a]+1;
            }
        }
        if(d!= address(0)){
            d = d;
        }
        d = d;
    }
}
