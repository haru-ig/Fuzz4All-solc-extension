pragma solidity ^0.8.0;

 function f(uint i) public {
     delete x;
     x = (1 * (1 - (2 * i))) + 999;
     assert(i==122);
 }

pragma solidity ^0.8.0;
 contract C {
    uint public x;
    constructor(uint _x) public {
        uint _tmp = _x + 3;
        require(_tmp>=1);

        x = _tmp;
    }
}
