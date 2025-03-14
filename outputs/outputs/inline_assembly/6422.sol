pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample38 {
    uint public k;
    uint public l;
    function increaseByOneAndTen(uint d) public {
        l = l + d;
    }
    function increaseByTenAnd100(uint e) public {
        l = l + 100 + k;
    }
    function increaseByTenAnd200(uint d) public {
        k = 200 + k;
        l = l + d;
    }
    function increaseBy100And10(uint w) public {
        l = l + w + 10 + l;
    }
    function increaseBy18HandsAnd200(uint c) public {
        k = 200 + k;
        l = k + 200 + l;
    }
}
