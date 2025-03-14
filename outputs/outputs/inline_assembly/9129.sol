pragma solidity ^0.8.0;
library Lib {
    function div(uint x, uint y) public pure returns (uint) {
        uint z = 0;
        while (y!= 0) {
            uint temp = x;
            x = y;
            y = temp - (z / y) * y;
            z = x - y;
        }
        return (z);
    }
}
contract C{
    function add(uint x, uint y) public pure returns (uint){
        y = (y / x) * x;
        y = ((y * 2) / x) * x;
        y = (y * 2) / x * x;
        return (y);
    }
    function getResult(uint x, uint y) public view returns (uint){
        uint z = Lit.div(x,y);
        return (x + Lit.div(y,2) + Lit.div(z,3) + Lit.div(z,2));
    }
}
