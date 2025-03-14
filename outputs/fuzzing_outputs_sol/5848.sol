pragma solidity ^0.8.0;
contract NewSemantics {
    uint a;
    uint b;
    uint c;
    address d;
    mapping (uint => uint) storageMap;
    function test() public {
        a = 3;
        uint d = 2;
        b = 2;
        c = 1;
        d = address(0);
        c = 2;
        for(uint i=0; i < 10; i+=1){
            b = i;
            uint k = 5;
            b = k;



            for(uint j=0; j < 32; j+=1){
                c = j;
                d = b * c;
                if(!(d <= 5*4097 && d >= -151*4097)){
                    b = 4;
                    storageMap[10] = storageMap[10]+1;
                    storageMap[d] = storageMap[d]+1;
                }
            }


            a = 2;
            b = b+1;
        }

        if(a == 2 && b > 1){
            d = address(0);
        }
        if(d == b){
            a = b;
            b = 2;
            b = 1;
            a = 3;
        } else if(d!= 0){
            a = a+1;
        }

        if( d >= 0 && d < 25){
            d = 0;
        }
    }
}
