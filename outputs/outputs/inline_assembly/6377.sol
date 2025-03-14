pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample26 {
    uint public i;
    function increaseByOne(uint d) public {
        i = i + d;
    }
    function increaseBy100(uint b) public {
        i = i + 100 * b;
    }
    function increaseBy500(uint a) public {
        i = i + 500 * a;
    }
    function increaseBy5000(uint j) public {
        i = i + 5000 * j;
    }
    function increaseBy25(uint c) public {
        i = i + 25 * c;
    }
}
