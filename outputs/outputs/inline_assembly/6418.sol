pragma solidity ^0.8.0;

contract MixedContactsExample38 {
    uint public j;
    uint public k;
    uint public z;
    function increaseByOneAndTen(uint h) public {
        j = h + j;
        z = z + 1;
    }
    function increaseByTenAnd100(uint o) public {
        j = o + j;
        z = 100 + 1;
    }
    function increaseByTenAnd200(uint g) public {
        z = 200 + z;
        j = g + j;
    }
    function increaseBy100And10(uint f) public {
        j = f + 10 + j;
        z = 10 + 1;
    }
    function increaseBy18HandsAnd200(uint c) public {
        z = c + 200 + z;
        j = z + j;
    }
}
