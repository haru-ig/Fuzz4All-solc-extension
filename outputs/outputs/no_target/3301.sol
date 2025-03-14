pragma solidity ^0.8.0;
contract modified3{
    function sumFunc(){
        uint256 x = 1;
        return modfunc(x);
    }
    function modfunc(uint256 x){
        uint256 mod = x % 4;
        if(mod==0){
            return 1;
        }
        else{
            return 0;
        }
    }
}

address payable sender = msg.sender;
