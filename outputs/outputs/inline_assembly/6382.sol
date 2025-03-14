pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample27 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    function increaseByOne(uint k) public {
        a++;
    }
    function increaseBy100(uint b) public {
        b++;
    }
    function increaseBy500(uint n) public {
        n++;
    }
    function increaseBy5000(uint y) public {
        y++;
    }
    function increaseBy25(uint a) public {
        a++;
    }
}
