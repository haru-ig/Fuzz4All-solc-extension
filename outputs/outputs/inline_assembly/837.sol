pragma solidity ^0.8.0;
contract Mutator6 {
    uint a;
    uint internal b;
    uint internal c;
    uint internal x;
    constructor(uint _a, uint _b) {
        a = _a;
        b = _b;
    }
    function Multiply() public {
        require(a > 0);
        x *= a;
    }
    function MultiplyAgain(uint y) public {
        require(a > 0);
        x *= a;
        a = y;
    }
    function MultiplyBy(uint256 y) public {
        require(a > 0);
        x *= a * y / 2**256;
    }
    function MultiplyBy256() public {
        require(a > 0);
        x *= a/2**256;
    }
    function Increment(uint a) public onlyWhileNotStopped {
        a++;
        b = a;
        c = a % 10**22;
    }
    function Increment256(uint a) public onlyWhileNotStopped {
        a++;
        b = a;
        c = a % 10**22;
    }
    function IncrementBy(uint a) public onlyWhileNotStopped {
        a++;
        x += a;
    }
}
