pragma solidity ^0.8.0;
contract Contract1 {
    event SetDdd(uint[] memory ddd);
    mapping (uint => uint) testMap;
    function testFunction() external returns (uint) {
        uint _size = testMap.length;
        return _size;
    }

    function setTestfunctionCalldata() public {
        uint[] calldata ddd = new uint[](2);
        uint _size = testMap.length;
        ddd[0] = _size;
    }

    function emitSetDddd(uint[] memory ddd) public{
        emit SetDdd(ddd);
    }

    function emitSize() public view returns (uint) {
        uint _size = testMap.length;
        return _size;
    }
}
