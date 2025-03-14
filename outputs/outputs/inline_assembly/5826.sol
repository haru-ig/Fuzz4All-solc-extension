pragma solidity ^0.8.0;
contract MutatedBlock5Mutation97 {
    uint internal _x;
    function test6() public returns (uint) {
        uint temp = block.number;
        _x += block.number + block.timestamp + block.difficulty;
        return block.number - (_x + temp);
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock5Mutation98 {
    uint internal _x;


    function test7() public returns (uint) {
        uint temp = block.number;
        _x += block.timestamp + block.difficulty;
        return block.number - (_x + temp);
    }

    function test8() public returns (uint) {
        uint p0 = block.timestamp;
        uint p1 = _x;
        _x;
        uint p2 = block.timestamp - 10;
        uint p3 = block.timestamp + 5;
        uint p4 = block.transactionHash;
        uint p5 = block.number;
        uint p6 = block.difficulty;
    }
}
contract MutatedBlock5Mutation99 {
    function test9() public returns (uint8){
        uint8 v = block.timestamp % 0xFFFFEEFF;
        return v;
    }
}
