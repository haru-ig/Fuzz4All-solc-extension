pragma solidity ^0.8.0;
contract Test {
    uint8 internal counter = 5;
    constructor(uint32 i) public {
        require(counter > 10);
        if ((counter > 10) && (counter <= 20)) {
            counter = 5;
        } else {
            counter = 10;
        }
        counter += 100;
    }
}
contract Test2 {
    uint32 _100;
    constructor(uint32 i) public {
        uint32 x;
        _100 = i;
        require(_100 > 10);
        if (_100 > 10 && _100 <= 20) {
            x = 5;
        }
    }
}
