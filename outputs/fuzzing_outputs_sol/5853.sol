pragma solidity ^0.8.0;
contract MovedSemantics {
    uint[100] a;
    uint[100] b;
    uint[100] c;
    address[100] d;


    function test() public {
        a = 3;
        uint[100][100] memory x;

        b = 2;

        uint[] memory indices = getRandomIndices(0, 99);
        if(indices[0] == indices[99]){
            for(uint i=0; i < indices.length -1; i+=1){
                uint index = indices[i];
                for(uint j=0; j < 100; j+=1){
                    a[j] = a[j] + 1;
                    b[j] = 1;
                }
                a[indices[i]+1] = a[indices[i]]+1;
                b[indices[i]] = 1;
                if(i == indices.length - 2){
                    a[indices[i]/100] = 3;
                    b[indices[i]/100] = 2;
                }
            }
        }
        for(uint j=0; j < 100; j+=1){
            if(c[j] < c[a[1]]){
                if(c[b[j]] == 2) d = address(0);
                b[j] = 3;
                c[j] = c[j]+1;
            }
        }
        if(d[0]!= address(0)){
            d[0] = d[0];
        }
    }

    function getRandomIndices(uint from, uint f){
        uint[10] memory res;
        res[0] = from;
        res[1] = from+1;
        for(uint j=0; j < f; j+=1){
            res[j+2] = res[j]+1;
        }
        uint[100] storage indep = res;
        while(
            (a[from] < a[res[0]]) &&
            (a[from] < a[res
