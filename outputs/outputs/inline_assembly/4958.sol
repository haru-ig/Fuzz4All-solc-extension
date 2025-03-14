pragma solidity ^0.8.0;
contract Simple1 {
    function setData1(uint[] _data) public {
        data_private = _data;
    }
    function getData1() public view returns(uint[]) {
        uint[] memory _data = data_private;
        return _data;
    }
}
