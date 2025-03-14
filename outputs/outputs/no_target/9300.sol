pragma solidity ^0.8.0;
contract semanticallyEquiv8 {
    uint8 x = 0;
    function f(uint8 _x) public(){
        require(_x>=0 && _x<=255);
        x = _x;
    }
}
