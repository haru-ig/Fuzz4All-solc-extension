pragma solidity ^0.8.0;
contract assignmentModulation_V4_Test {
    uint[12] public x;
    uint public w;
    uint public y;
     constructor () public {
     }
    function setPairs_v4(uint _a) public {
       w = _a;
       x = new uint[](12);
    }
    function getAndStorePairs() public returns(uint){
        return 0;
    }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_StructuresArray {
    struct S {
        uint x;
        uint y;
    }
    S[] public s;
    uint public w;
    uint public y;

    constructor() public {
        s = new S[](2);
    }

    function setPairs() public{
        s = new S[](2);
        s[0].x = 45;
        s[0].y = 2;
        s[1].x = 67;
        s[1].y = 2;
    }

    function getAndStorePairs() public returns(uint){

        uint result = s.length;
        return result + x.length + w + s.length + 45;
    }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_TestStructuresArray {
    struct S {
        uint x;
        uint y;
    }
    S[] public s;
    uint public w;
    uint public y;
    constructor () public {
        s = new S[](2);
    }

    function setPairs() public{
        s = new S[](2);
        s[0].x = w;
        s[0].y = y;
        s[1].x = y;
        s[1].y = s.length;
    }

    function getAndStorePairs() public returns(uint){

        uint result = y + x.
