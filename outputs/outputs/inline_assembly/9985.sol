pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    event Changed(uint8 z, uint8 w);
    modifier X{
        x = x + 1;
        changed();
        _;
    }
    modifier Y{
        i = (i + x) / 2;
        _;
    }
    function changed(){
        emit Changed(1+x,2+x);
    }
    function someFunc(uint8 a, uint8 b) public {
        i = i + a;
        X{ } Y{ }{ }{ }{ }{ }{ }{ }{ }{ }{ }{ }{ }{ }{ }{ }{ }
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
        x += b;
    }
}
