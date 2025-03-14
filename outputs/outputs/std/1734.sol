pragma solidity ^0.8.0;
contract Duplicated {
    struct Event {
        uint startTime;
        uint endTime;
    }
    mapping(uint => uint) a;
    mapping(uint => uint) b;
    uint d = 1;

    function duplicate() public{
        b[a[a.len]] = a[a.len];
        a[a.len] = b[a[a.len]];
        b[a.len] = 0;
        d = 0;
    }

    function modify() public {
        a[a.len] = 1;
        b[a[a.len]] = 1;
    }
    function check() public {
        if (a[a.max] < a[a.min]) {
            d = 1;
        } else if (a.min == b[b.min]) {
            d = 0;
        } else {
            d = 2;
        }
    }
}
