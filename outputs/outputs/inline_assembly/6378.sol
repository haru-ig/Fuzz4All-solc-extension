pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample27 {
    uint public i;
    function increaseByOne(uint d) public {
        i += d;
    }
    function increaseBy100(uint b) public {
        i += 100 * b;
    }
    function increaseBy500(uint a) public {
        i += 500 * a;
    }
    function increaseBy5000(uint j) public {
        i += 5000 * j;
    }
    function increaseBy25(uint c) public {
        i += 25 * c;
    }
    function add3() public add3(int) public {
        i += 3;
    }
    function add25() public add25(int) public {
        i += 25;
    }
}
