pragma solidity ^0.8.0;
contract Main{
    modifier B2(){
        uint256 i;
        while (true) {
            i = f();
            if (i == 42) return;
        }
    }
    function f() private returns(uint256){
        while (true){
        uint256 _r = 42;
        if (_r > 0)
        return _r;
    }
        return 42;}
}


<fim_middle>
