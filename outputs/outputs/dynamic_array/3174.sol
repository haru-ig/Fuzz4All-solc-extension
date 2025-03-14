pragma solidity ^0.8.0;
contract AssignmentMutator {
    uint public a;
    uint public b;
    uint public c;
    uint public x1;
    uint public x2;
    constructor () public {
        a = 0;
        b = 0;
        c = 0;
        x1 = 0;
        x2 = 0;
    }
    function doWork() public {
        b = 10;
        x1 = x1 > 1? (x1 - 1) : 1 ;
        x2 = x2 > 1? (b + 1) * 2 - 3 : b * 2 - 1;
        c = 3;
        b = 11;
        x1 = x1 + 1;
        x2 = x2 + 1;
        c = 4;
        a = x1 + x2 * 2;
    }
}

pragma solidity ^0.8.0;
contract AssignmentFeatures {
    uint public a;
    uint public b;
    uint public c;
    uint[] public x_;
    uint public x1;
    uint public x2;




        x1 = 1;
        x2 = 0;
