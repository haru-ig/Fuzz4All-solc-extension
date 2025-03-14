pragma solidity ^0.8.0;
contract L21 {
    uint public constant value = 0x5bdeb84f23fb33175c92cd796d9e6514;
    enum T { E
    }
    mapping(address => mapping(address => int)) public A;
    function test() public {
        A[this][address(0x910aDfc443571B15b8a568F0f82C585E7FF1d415)] = 2;
    }
}
