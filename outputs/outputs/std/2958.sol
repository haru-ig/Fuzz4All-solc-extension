pragma solidity ^0.8.0;
contract Mult {
    uint x = 3;
    uint y = 4;
    (uint z, bool b) = (Mult.add(x, y), Mult.equal(x, y));
    (uint aa, bool _b) = (Mult.divide(x, y), Mult.equal(x, y));

}
