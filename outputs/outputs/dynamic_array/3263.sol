pragma solidity ^0.8.0;
contract Mut {
    using Mut7 library Mut7;
    B[] public dynamicArray;
    constructor() public {
        setB("aa", B.a);
        dynamicArray = [B.aa, B.ab];
        Mut7.setB("aa", B.b);
        dynamicArray.push(B.a);

    }
}
