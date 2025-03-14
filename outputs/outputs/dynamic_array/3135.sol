pragma solidity ^0.8.0;
contract AssignmentModulation_V2_Program_8 {
    uint[] memory b;
    uint256[] public x;
<<<<<<< HEAD
    uint public a;
    uint public b;
    constructor () public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x[0] = 0;
        x[1] = 0;
    }



=======
    uint256[] public l;
    uint public a;
    uint public b;
    constructor() public {
        a = 0;
        b = 0;
        x = new uint[](2);
        x[0] = 0;
        x[1] = 0;
    }
    function doWork() public returns(uint){
        return x[0];
    }
>>>>>>> 861b08709a907d652f58e5af0c176a242d6a019b
    function doWork2() public {
        l[0] = 0;
        l[1] = 0;
    }
    function doWork3() public returns(uint) {
        return x[0];
    }
    function add(uint a) public {
        a += 1;
        b += a;
        a += 1;
        a += b;
    }
    function subtract(uint a) public {
        a -= 1;
        b -= a;
        a -= 1;
        a -= b;
    }
    function addAndAnd(uint a, uint b) public {
        uint c = a + b;
        b = b + c;
        a = c;
        a += b;
    }
    function subAndAnd(uint a, uint b) public {
        uint c = a - b;
        b -= c;
        a -= c;
        a -= b;
        b += a;
    }
    function addAndEq(uint a, uint b) public {
        uint c = a + b;
        b = b + c;
        a = c;
        a += b;
        a = 0;
    }
    function subAndEq(uint a, uint b) public {
        uint c = a - b;
        b -= c;
        a -= c;
        a -= b;
        b
