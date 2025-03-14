pragma solidity ^0.8.0;
contract FallbackSemantics{
    uint d;
    function test() public payable {
        uint z = 0;
        require(msg.value == 3);
        if(true){
            require(z == 0);
            return;
        }
        do{
            require(z!= 0);
            d = d+1;
        } while(!z);
        if(z == 0)
            spending(z = 3);
        else
            spending(z = 2);
        d = d+1;
    }
    function spending(uint x){
        uint y = 1;
        zzz();
        if(y!= 0){
            spending(5);
            return;
        }
        do{
            spending(0);
        }while(y < 2);
        spending(x);
    }
    function zzz() public{
        spending(5);
    }

}
contract Contract {
    uint a;
    uint b;
    uint c;
    function test(uint x){
        uint z = 0;
        if(x == 100)
            z = 0;
        require(x >= 3);
        b = b+1;
        b = b+1;
        require(x == 5);
        if(z == 0)
            spending(z = 1);
        do{
            wzzz(x-1);
            b = b+2;
            wwww(x-10);
            if(x == 100){
                wwww(99);
            }
            if(y < 1) break;
            do{
                wwww(x-2);
                wzzz(z-1);
            }while(y < 1);
            x = x+2;
        }while(z > 0);
        b = b+2;
    }
    function wzzz(uint x){
        wzzz();
        b = b+6;
    }
    function wwww(uint x){
        uint y = 0;
        if(z == 0)
            x = x - 1;
        b = x + 1;
        if(y < 1) return;
        do{
            wwww(x-y);
            b = b+4;
            if(x == 100) break;
        }while(x == 100);
    }
}
contract Caller {
    function test() public {
        uint z = 0;
        if(msg.value == 50)
            return;
        Contract c;
        c
