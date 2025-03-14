pragma solidity ^0.8.0;
contract Solidity4 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public maxB;
    uint public prevA;
    uint public prevB;
    address owner;
    constructor() public {
        a = 1;
        b = 1;
        maxA = a;
        maxB = b;
        prevA = 1;
        prevB = 1;
        owner = msg.sender;
    }
    modifier modifierA {
        a = a+1;
        prevA = a;
        emit bChangedEvent(b, a);
        require(b <= maxB);
        _;
    }
    modifier modifierB {
        b = b+1;
        prevB = b;
        emit bChangedEvent(b, a);
        require(b <= maxB);
        _;
    }
    function myFunction() public modifier modifierA, modifier modifierB {
        b = b + prevA + 1;
        b = b + prevA + prevB + 1;
        a = a + 1;
        b = b + prevA + prevB + prevA + 1;
        a = a + 1;
        a = a + 1;
        maxB = b;
    }
    function bChangedEvent(uint _b, uint _a) public {
    emit bChanged(a,_b);
    }
    function aChanged() public view returns(bool) {
        address check = msg.sender;
        return (a == _a);
    }
}

pragma solidity ^0.8.0;
contract Solidity6 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public maxB;
    uint public prevA;
    uint public prevB;
    address owner;
    mapping (address => bool) public functions;
    constructor() public {
        a = 1;
        b = 1;
        maxA = a;
