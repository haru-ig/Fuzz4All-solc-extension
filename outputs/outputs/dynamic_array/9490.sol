pragma solidity ^0.8.0;
contract Main {
    mapping(address => bool) public blackboxes;
    event BlackboxCreated (address indexed owner);
    struct Blackbox {
        address blackbox;
        uint32 balance;
        bool isBlackboxed;
    }
    Blackbox[] public blackboxes_;
    function createBlackboxes (uint _n) public returns (bool) {
        for(uint8 i = 0; i < _n; ++i) {
            Blackbox storage element = blackboxes_[i];
            if (element.blackbox == address(0)) {
                element.blackbox = msg.sender;
                element.balance = 1;
                element.isBlackboxed = false;
                emit BlackboxCreated(element.blackbox);
            } else {
                element.isBlackboxed = true;
            }
        }
        return true;
    }
    function updateBlackboxes (address blackbox) public returns (bool) {
        for (uint8 i = 0; i < blackboxes_.length; ++i) {
            Blackbox storage element = blackboxes_[i];
            if (element.blackbox == blackbox && (element.balance++ > 10 ||!element.isBlackboxed)) {
                element.isBlackboxed =!element.isBlackboxed;
                emit BlackboxCreated(blackbox);
                return true;
            }
        }
        return false;
    }
    function destroy() public {
        for (uint8 i = 0; i < blackboxes_.length; ++i) {
            Blackbox storage element = blackboxes_[i];
            if (!element.isBlackboxed) {
                selfdestruct(element.blackbox);
                element.back();
                if (block.timestamp < 1619485200) {
                    block.timestamp = 1619485200;
                }
                break;
            }
        }
    }
}
