pragma solidity ^0.8.0;
contract Test43_DynamicArray4 {
    uint[] public  A = new uint[](10);
    uint[] public  B = new uint[](10);
    uint test;
    constructor()  public {
        A[0] = 1;
        B[0] = 1;
        A[1] = 1;
        B[1] = 12;
    }
}

pragma solidity ^0.8.0;
contract Test43_DynamicArray4 {
    uint[] public  A = new uint[](1);
    uint[] public  B = new uint[](0);
    uint test;
    constructor()  public {
        A[0] = 1;
        B[0] = 12;
    }
}
