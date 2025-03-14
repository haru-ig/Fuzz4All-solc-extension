pragma solidity ^0.8.0;
library Blackboxes {

    function addBlackbox (address blackbox, uint num) public {
        require(blackboxes[blackbox]==false, "Cannot add multiple blackboxes.");
        for (uint i = 0; i < num; i++) {
            blackboxMapping[blackbox] += 1;
        }
        blackboxes[blackbox] = true;
    }
    mapping(address => uint) public blackboxMapping;
}
