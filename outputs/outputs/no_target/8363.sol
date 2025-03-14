pragma solidity ^0.8.0;
contract NonChecked {
    constructor(address) public {
        unchecked {
            if(false) {
            }
        }
    }
}
contract Main {
    address A;
    constructor() payable public {
         emit (true);
         A = 0x0000000000000000000000000000000000000000;
        A = A.sub(0xd43092B465F138c3E54ee1b8F905454f7C1489e1);
        A = A.sub(68);
        A = A.sub(0x0);
        emit (true);
         A = 0x000000000000000000000000000000000000000;
        unchecked {
            uint temp = 200;
        }
        A.add(1);
    }
    event E;
}
