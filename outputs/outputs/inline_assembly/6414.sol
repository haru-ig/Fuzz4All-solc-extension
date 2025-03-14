pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample37 {
    uint public j;
    uint public k;
    uint public z;
    function increaseByOneAndTen(uint d) public {
        j = 1 + j;
        z = z + 1;
    }
    function increaseByTenAnd100(uint e) public {
        j = e + j;
        z = 100 + 1;
    }
    function increaseByTenAnd200(uint d) public {
        z = 200 + z;
        j = z + j;
    }
    function increaseBy100And10(uint w) public {
        j = w + 10 + j;
        z = 10 + 1;
    }
    function increaseBy18HandsAnd200(uint c) public {
        z = c + 200 + z;
        j = z + j;
    }
}
