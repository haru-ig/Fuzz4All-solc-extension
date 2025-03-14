pragma solidity ^0.8.0;
contract D {
    uint z = 0;
    uint public x = 3 * z - 1;
}
contract Y {
    uint z = 0;
    uint public x = 3 * z - 1;
}
contract Z {
    uint public x = 3 * z - 1;
}
contract P {
    function f() view public returns (uint) {
    }
}
contract Q is P {
}
contract Q is P {
    mapping (uint => bool) public d;
    uint public t;
}
