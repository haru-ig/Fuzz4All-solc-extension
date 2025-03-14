pragma solidity ^0.8.0;
interface I4aEvents {
    event ee8(uint);
    event ee8(uint, uint);
    event ee(uint);
}
contract Test {
    uint[] public arrArray;
    address public admin = 0x4C2EC56D9607FEE9D2476273FDE95D90A8C5BFA2;


    function testA0() public view {
        if (true) {
            I3aEvents(admin).emit(I3aEvents(admin), arrArray.length);
            I3aEvents(admin).emit(I3aEvents(admin), 102);
            I3aEvents(admin).emit(I3aEvents(admin), arrArray[1]);
            I3aEvents(admin).emit(I3aEvents(admin), 101);
            I3aEvents(admin).emit(I3aEvents(admin), 80);
        }
    }

    function testA1() public {
        I4aEvents(admin).emit(I4aEvents(admin), arrArray.length, 3, 4, 5, 102, 45);
    }

    function testA2() private view only() {
        I4aEvents(admin).emit(I4aEvents(admin), arrArray.length);
    }
}
