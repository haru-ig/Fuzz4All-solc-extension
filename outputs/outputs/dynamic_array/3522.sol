pragma solidity ^0.8.0;
contract D {
    uint256[540] b2;
    constructor() public {
    }
    function mul() public payable {
        b2[0] = 10; b2[1] = 11; b2[2] = 12; b2[3] = 13; b2[4] = 14; b2[5] = 15; b2[6] = 16;b2[7] = 17; b2[8] = 18; b2[9] = 19; b2[10] = 20;b2[11] = 21; b2[12] = 22;
        emit Emit(msg.sender, 10, 11, 12, 13, 14, 15, 16, 17);
        for(uint256 i = 51; i > 0; ) {
           b2[i] = 63; i--; b2[i] = 3; b2[i + 1] = 3; i = 3;
        }
        emit Emit(msg.sender, 12, 13, 14, 15, 16, 17);
    }
}
contract Emit {
    event Event(address sender, uint256 num1, uint256 num2, uint256 num3, uint256 num4, uint256 num5, uint256 num6, uint256 num7);
    function Emit() public {
    }
    function emit(uint value) public pure {
        Event(msg.sender, 1, 2, 3, 4, 5, 6, 7);
    }
}
