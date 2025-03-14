pragma solidity ^0.8.0;
contract modifierB{
    function f() public view returns (uint256){
        uint256 x = 42;
        uin256 y = 257;
        if (y>x){
            x = uint160(-x-1);
            require(check(x-x), 'fail');
        }else{
            x -= 257;
            require(x>32,'fail2');
        }
        return x;
    }
}

contract modifierB {
    function testMethod() public returns (uint256){
         uint256 i = 11;
         if(i<0) return -i;
    }
}
