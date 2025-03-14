pragma solidity ^0.8.0;
contract modifier1{
    function f(uint x) public pure returns(uint){
        uint y = x / 256;
        return y;
    }
}
contract myContract1 is modifier1, modifierU
{
    function g(uint x) public returns (uint) {
        return x * 256 + f(x);
    }
}

pragma solidity ^0.8.0;
contract modifierA{
    function f(uint x) public pure returns(uint){
        uint y = x / 256;
        if(y>1){
            y = y-256;
        }
        return y;
    }
}
contract myContractA is modifier1, modifierU, modifierA
{
    function g(uint x) public returns (uint) {
        return x * 256 + f(x);
    }
}
