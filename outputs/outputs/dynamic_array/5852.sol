pragma solidity ^0.8.0;
struct Record {
    uint16 _fieldA;
}
contract Test1883 {
    Record public record;
    function setA(uint16 a) public {
        record._fieldA = a;
    }
    function getA() public view returns (uint16) {
        return record._fieldA;
    }
}
pragma solidity ^0.8.0;
contract Test1888 {
    uint16[] arr;
    constructor() public {
    }
    function setX(uint16 number) public {
        arr.push(number);
    }
    function getX() public view returns (uint16) {
        uint16 ret = arr[0];
        return ret;
    }
}
