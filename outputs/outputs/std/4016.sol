pragma solidity ^0.8.0;
contract Array {
    struct Node { uint val; uint next; }
    Node head;
    function setVal(uint val) public {
        head.val = val;
        if (head.next == 0) next();
    }
    function setNext(uint elem, uint next) public { head.next = next; }
    function next() public { uint next; next = head.next; head.next = head.val; }
}

pragma solidity ^0.8.0;
contract ArrayExample is Array {


    function next() public { uint next; next = head.next; head.next = head.val; }
}

pragma solidity ^0.8.0;
contract ArrayExample1 {
    uint i;
    address[] a;
    Array aa;
    ArrayExample1() public {
        a = new address[](3);
    }
    function f_1a(uint i) public returns (uint) {
        aa.setNext(i, i+1);
        aa.next();
        i = aa.head.val;
        return i;
    }
    function f_1b(uint i) public returns (uint) {
        aa.setNext(i, i+1);
        aa.setNext(i+1, i+2);
        aa.setNext(i+2, i+3);
        aa.next();
        i = aa.head.val;
        return i;
    }
    function f_2(uint i) public returns (uint) {
        aa.setVal(i);
        aa.next();
        i = aa.head.val;
        return i;
    }
}

pragma solidity ^0.8.0;
import "./Array.sol";
contract ArrayExample2 {

    uint i;
    Array AA;
uint N = 3;
uint ELEM = N;
    ArrayExample2() public {
        AA = new Array;
    }
    function f_1() public {
        AA.setVal(ELEM);
        AA.setVal(ELEM+1);
        AA.setVal(ELEM+2);
        AA.next();
        i = AA.head.val;
    }
    function f_2a() public {
        AA.setVal(i);
        AA.next();
        AA.setVal(i+1);
    }
    function f_2b() public {
        AA.setVal(i);
        AA.next();
        AA.setNext(0, i+2);
        AA.next();
        AA.setVal(i+2);
        AA.next();
        AA.setVal(i+3);
    }
