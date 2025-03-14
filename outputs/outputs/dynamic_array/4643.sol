pragma solidity ^0.8.0;
contract A {

    mapping(uint256 => IsolateData) isolates = mapping(uint256 => IsolateData);
    IsolateData data = IsolateData(1);

    constructor(uint256 _id, uint256[] storage lengths) {
        isolates[_id] = IsolateData(_id * 2);
    }

    function testBug() public {
        dynamic memory dArray = new uint256[](2);
        uint256 x1 = dArray[0];
        uint256 x2 = isolates[_id].data;
        dArray[0] = 2;
        uint256 x3 = isolates[_id].data;
        dArray[1] = 4;
        uint256 x4 = isolates[_id].data;
        assert(x1 == 1 && x2 == 1);
        assert(x3 == 2 && x4 == 4);
        emit TestBugOutput(_id, x1, x2, x3, x4);
    }

event TestBugOutput(uint256 _id, uint1 x1, uint x2, uint x3, uint x4);
}
