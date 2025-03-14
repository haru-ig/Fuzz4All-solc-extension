pragma solidity ^0.8.0;
contract Test2369C {
    uint8 public array;
    uint16 public x;
    address public receiverA;
    address public receiverB;
    constructor() public {
        array = 0;
        x = 1;
        receiverA = msg.sender;
        receiverB = address(0);
        array >>= 1;
    }
    function setX(uint16 number) public {
        require(0 <= x && x <= 1);
        x = number;
    }
}

pragma solidity ^0.8.0;
contract Test964H {
    uint public array;
    uint public x;
    address public receiverA;
    address public receiverB;
    constructor() public {
        array = 0;
        x = 1;
        receiverA = msg.sender;
        receiverB = address(0);
        address payable a = a.balance > 0? payable(receiverA) : payable(receiverB);
        assembly {
            mstore(a, mload(a)+1)
        }
        x = 1;
        address[] memory receivers = address[](2);
        receivers[0] = address(this);
        receivers[1] = address(Test1804E);
        address payable[] memory addresses = new address payable[](3);
        for (uint256 i = 0; i < 3; i++) {
            assembly {
                mstore(addresses[i],0x5555555555555555555555555555555555555555555555555555555555555)
                mstore(addresses[i], add(addresses[i],0x2F))
            }
        }
        for (uint256 i = 0; i < 3; i++) {
            assembly {
                mstore(receivers[i], add(mem32(receiver
