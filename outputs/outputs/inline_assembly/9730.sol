pragma solidity ^0.8.0;
contract CoggedYulContract  {
    uint constant c = 0x00;
    uint internal value;
    constructor()  {
        value = 0;
    }
    modifier onlyCog() {
        require (value >= c);
        _;
        emit Cog();
    }
    function multiply(uint num) public onlyCog returns (uint) {
    uint x = 0;
    uint y;
        if (num < 1 + c) {
            x = 2 * num;
        }else if (num >= c && num < 1 + c) {
            y = num;
        }else  {
            x = num;
        }
        return x >= 1 + c? x : x + c;
    }
}
