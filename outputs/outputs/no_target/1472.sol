pragma solidity ^0.8.0;
contract Semantic0030 {
    function same() public pure {
        bool x;
        bool x = true;
        bool x1 = x == true;
        bool x2 = x1 &&!x;
        bool x3 =!x && false;
        bool x4 = x || x1;
        bool x5 = (x || false) == true;
        bool x6 = x1 || (x && x2);
        bool x7 = true && false == true;
        bool x8 = x4 == false;
        bool x9 =!false == address(0);
        bool x10 =!(true? true : false);
        bool x11 = (true && x) ||!((x || false) > 0);
        bool x12 = x1 && x3;
        bool x13 = true;
    }
}
