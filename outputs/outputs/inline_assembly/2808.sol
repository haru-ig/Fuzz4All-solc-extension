pragma solidity ^0.8.0;
contract B {
    uint public i = 42;
    mapping (uint => string) public info;
    struct Point {
        address x;
        uint y;
    }
    function do_change(address z, Point memory p, uint x) public returns (uint) {
        uint i1; (i1, info[i], p.x) = (42, "Some Text", p.x);
        uint v1; (v1, info[i1], i) = (13, "This is info.", z);
        bool b1; (b1, i1) = (true, 99);
        bool b2; (b2, info[v1]) = (false, "Some text");
        bool b3; (b3, x) = (true, 99);
        revert("Check fails");
        if (b1){
            revert("Check fails");
        } else {
            i++;
        }
    }
    function do_check() public returns (uint) {
        uint x = 0;
        uint i1; (x, i1, i) = (0, 1, i);
        uint v1; (v1, i1, i) = (1, 2, i);
        bool b1; (b1, i) = (true, 3);
        bool b2; (b2, x) = (true, 4);
        if (b1){
            revert("Check fails");
        } else {
            emit InfoEvent(i, i1, v1);
            revert("Check fails");
        }
    }
}

pragma solidity ^0.8.0;
contract B {
    uint public i = 42;
    mapping (uint => string) public info;
    struct Point {
        address x;
        uint y;
    }
    function do_change(address z, Point memory p, uint x) public returns (uint) {
        uint i1; (i1, info[i], p.x) = (42, "Some Text", p.x);
        uint v1; (v1, info[i1], i) = (13, "This is info.", z);
        bool b1; (b1, i1) = (true, 99);
        bool b2; (b2, info[v1]) = (false, "Some text");
        bool b3; (b3, x) = (true, 99);
        revert("Check fails");
        if (b1){
