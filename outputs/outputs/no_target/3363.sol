pragma solidity ^0.8.0;
contract mutated {
    modulator public mcmod;


    address constant public A = 0xA;
    address constant public B = 0xB;
    address constant public B2 = 0x200000000000000000000000000000000000000000000000000000000000B;

    constructor(uint256 param1, uint256 param2, address payable paramThree) {
        mcmod.test(param1);


    }
}
