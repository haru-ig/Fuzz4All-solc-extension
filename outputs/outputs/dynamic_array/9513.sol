pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping(address => bool) public blackboxes;
    mapping (address => bool) public blackboxes2;
    event BlackboxCreated (address indexed owner);
    constructor() public { owner = msg.sender; }
    function createBlackboxes (address blackbox) public { blackboxes[blackbox] = true;  blackboxes2[blackbox] = false;}
    function updateBlackboxes (address blackbox) public {
        if (blackboxes[blackbox]) { return; }
        blackboxes[blackbox] = true;
        blackboxes2[blackbox] = true;
        emit BlackboxCreated(blackbox);
        address blackboxAddress = blackboxes[blackbox];
        for (uint8 i = 0; i < 10; ++i) { blackboxAddress.call{value:0}(new bytes(20)); }
    }
    receive() external payable {}
}
