pragma solidity ^0.8.0;
contract OldSolidityMutated {
    address payable private a;
    uint i;
    mapping (uint => string) private test;
    mapping (uint => uint[]) private foo;
    mapping (uint => uint) private bar;
    mapping (uint => mapping (uint => bool)) private barWithFalseValues;

    constructor() public {
        address payable _foo = payable(0x11111111111111111111111111111111111111111);
        uint[] memory _memory = [ 7500, 9886, 3379 ];
        uint[3] memory dynamicSizes = [ 5000, 2982, 7000 ];
        uint[1] memory dynamicSizes2 = [1500];
        (uint b, ) = calculate( 12529, 277 );
        (uint b2, ) = calculate( (uint) (_foo), (uint) (_memory));
        (uint b3, ) = calculate( (uint) (_foo), (uint) (_memory), (uint) (_memory), (uint) (_memory));
        (uint b4, ) = calculate( (uint) (_foo), (uint) (_memory), dynamicSizes);
        (uint b5, ) = calculate( (uint) (_foo), (uint) (_memory), dynamicSizes2);
        (uint b6, ) = calculate( (uint) (_foo), (uint) (_memory), dynamicSizes);
        bar[99999999] = 99999999;
        (uint b7, ) = calculate( (uint) (_foo), (uint) (_memory), (uint) (_memory), (uint) (_memory), (uint) (_memory), (uint) (_memory), (uint) (_memory), (uint) (_memory), (uint) (_memory));
        (uint b8, ) = calculate( (uint) (_foo), (uint) (_memory), (uint) (_memory), (uint) (_memory), (uint) (_memory), (uint) (_memory2), (uint) (_memory));
        uint[] memory memoryDynamicSizes = [99000000, 2982, 990000];
        (uint b9, ) = calculate( (uint) (_foo), (uint) (_memory), (uint) (_memoryDynamicSizes));
        (uint b10, ) = calculate2( (uint) (_foo), (uint) (_memoryDynamicSizes), 500
