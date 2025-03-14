pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    uint public k;
    uint public l;
    function increaseByOneAndTen(uint b) public {
        l = l + b;
    }
    function increaseByTenAnd100(uint e) public {
        l += e;
        k = 200 + k;
    }
    function increaseByTenAnd200(uint d) public {
        k = 200 + k;
        l = l + d;
    }
    function increaseBy10(uint w) public {
        k = 10 + k;
        l = l + w;
    }
    function increaseBy18HandsAnd200(uint c) public {
        k = 200 + k;
        l += c + k;
    }
}
