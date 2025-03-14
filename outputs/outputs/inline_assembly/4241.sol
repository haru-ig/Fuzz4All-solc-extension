pragma solidity ^0.8.0;
contract Mutators16Mutated2 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 3;
    }
    function increment (uint _returnData) public returns (uint) {
        uint _increment = a + 5;
        return _increment;
    }
}
contract Mutators17Mutated2 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 3;
    }
    function increment (uint _returnData) public returns (uint) {
        uint _increment = a + 5;
        uint _increment2;
        assembly {

            _increment2 := returnData(7)
        }
        return (_increment + _increment2);
    }
}
struct Mutators18Mutated1 {
    uint internal a;
    uint public b;
    constructor (uint Y) public {
        a = Y * 3;
        b = 4;
    }
    function increment (uint _returnData) public returns (uint) {
        return (a + 1);
    }
}
contract Mutators18Mutated2 {
    uint internal a;
    uint public b;
    constructor (uint Y) public {
        a = Y * 3;
        b = 4;
    }
    function increment (uint _returnData) public returns (uint) {
        a += 5;
        b += 6;
        return a;
    }
}
contract Mutators18Mutated3 {
    uint internal a;
    uint public b;
    constructor (uint Y) public {
        a = Y * 3;
        b = 4;
    }
    function increment (uint _returnData) public returns (uint) {
        uint _increment = a + 1;
        uint _increment2 = b + 2;
        return (_increment + _increment2);
    }
}
