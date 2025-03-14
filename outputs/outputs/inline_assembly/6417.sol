pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample38 {
    uint public j;
    uint public k;
    uint public z;
    function increaseByOneAndTen(uint d) public {
        j = j + 1;
        z = 1 + z;
    }
    function increaseByTenAnd100(uint e) public {
        j = e + j;
        z = e + z;
    }
    function increaseByTenAnd200(uint d) public {
        z = z + 1;
        j = 100 + j;
    }
    function increaseBy100And10(uint w) public {
        j = w + 10 + j;
        z = 1 + z;
    }
    function increaseBy18HandsAnd200(uint c) public {
        j = 18 + j;
        z = z + 200;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample39 {
    uint public j;
    uint public m;
    uint public m1;
    uint public z;
    function increaseByOneAndTen(uint h) public {
        j = j + 1;
        m = m + 1;
        m1 = m1 + 1;
        z = z + 1;
    }
    function increaseByTenAnd100(uint d) public {
        j = 100 + j;
