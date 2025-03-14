pragma solidity ^0.8.0;
contract modifierG{
    uint x = 1;
    function g() public view returns (uint) {
        return x++;
    }
}
contract modifierW{
    uint x = 1;
    function w() public view returns(uint) {
        return f() - g();
    }
}
