pragma solidity ^0.8.0;
contract StatefulDynamicArrays_414 {
    uint256[] public field;
    uint256 public size;
    event Assignment(uint256 data);
    constructor() public {
        field = new uint256[](5);
        size = 5;
    }
    function assign(uint256 data) public {
        size += 1;
        emit Assignment(data);
    }
    function assignOne() public {
        size += 1;
    }
}

contract StatefulDynamicArrays_4 {
    uint256[] public field;
    uint256 public size;

    struct Data {
        uint256 x;
        uint256 y;
        uint256 z;
    }
    mapping(uint256 => Data) public data;
    bool public done;
    constructor() public {

        field = new uint256[](5);
        size = 5;
        data[0].x = 1;
        data[0].y = 2;
        data[0].z = 3;
    }
    function assign(uint256 data) public {
        size += 1;
        emit Assignment(data);
    }
    function assignOne() public {
        size += 1;
        emit Assignment(1);
    }
}
