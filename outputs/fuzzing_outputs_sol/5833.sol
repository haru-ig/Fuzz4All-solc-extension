pragma solidity ^0.8.0;
contract MutedSemantics {
    uint a;
    uint b;
    uint c;

    event Mutation(uint a, uint b);
    address payable f;
    function test() public {
        a = 3;
        b = 2;
        c = 1;
        f = address(0);
        for(uint i = 0; i<100; i++){
            c = 2;
            b = 1;
        }
        emit Mutation(a,b);
        if(a >= 3 || b <= 2){
            if(a==2) f = address(0);
            b = 3;
            a = a+1;
        }
        if(f!= address(0)){
            f = f;
        }
    }
}
