pragma solidity ^0.8.0;
contract Main2 {
    mapping(address => mapping (uint => uint)) public blackboxMapping;
    mapping(address => bool) public blackboxes;
    constructor () { blackboxes[msg.sender] = true;}
    function modifyBlackboxes (address blackbox, uint num) public {
        for (uint i = 0; i < num; i++) {
            blackboxMapping[blackbox][1] += 1;
        }
        blackboxes[blackbox] = true;
    }
}
contract Main3 {
    mapping(address => mapping (uint => uint)) public blackboxMapping;
    mapping(address => bool) public blackboxes;
    uint maxCount;
    constructor () {
        blackboxes[address(this)] = true;
        maxCount = maxCount + 1;
        blackboxes[address(maxCount)] = true;
        maxCount += 1;
        maxCount += 1;
        blackboxes[address(maxCount)] = true;
        maxCount += 1;
        blackboxes[address(maxCount)] = true;
        maxCount += 1;
        maxCount += 2;
    }
    function modifyBlackboxes (address blackbox, uint num_) public {
        maxCount += num_;
        for (uint i = 0; i < num_; i++) {
            blackboxMapping[blackbox][1] += 1;
        }
        blackboxes[blackbox] = true;
    }
    function getCount() public view returns (uint count_) {
        count_ = 1;
    }
}
