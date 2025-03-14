pragma solidity ^0.8.0;
contract modifierWithParam{
    function f(uint x)  public view returns(uint) {
        if (x == 0) {
            return 0;
        }
        return (
        unchecked { x = (x == 1? 0 : x == 0? 0 : 1)}}
    );
    }
}
