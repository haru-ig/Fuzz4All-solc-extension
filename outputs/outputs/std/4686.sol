pragma solidity ^0.8.0;
contract B is A {
    uint public x;
}
contract C is B {
    mapping (uint => mapping(uint => uint)) public m;
}
contract D is C {
    function add(uint a, uint b) internal pure returns(uint){return a+b;}
}
contract E is D {
    uint private m2;
}
contract F {
    function mul(uint a, uint b) public pure returns (uint) {
        return a*b;
    }
}
