pragma solidity ^0.8.0;
contract Array {
    mapping(uint256 => uint256) public myMapArray;

    function GetMap(address _address) public pure returns(address[3] memory){
        return [MyMap(), myMapArray[0], myMapArray[1]];
    }

    function SetMap(address _address, address[3] memory _myMap) public {
        myMapArray[_address] = _myMap[0];
        myMapArray[2] = _myMap[1];

    }

    function GetMapIndex(uint256 _index) public view returns(address){
        return myMapArray[myMapArray.length - _index - 1];
    }

    function AddMap(uint256 _index, uint256 _value) public {
        uint256 lastIndex = myMapArray.length -1;
        myMapArray[lastIndex - _index + 1] = myMapArray[lastIndex - _index];
        myMapArray[lastIndex - _index] = 0;
    }

    function GetIndex(uint256 _index) public view returns(address){
        return myMapArray[_index + 1];
    }

    function AddIndex(uint256 _index, address _address) public {
        myMapArray[_index + 1] = _address;
    }

    function GetMyMapArray() public view returns(uint256[2] memory){
        return [GetMyMapIndex(0), GetMyMapIndex(1)];
    }

    function GetMyMapIndex(uint256 _index) public view returns(address){
        return myMapArray[_index + 2];
    }

    function MyMapIndex(uint256 _index) public view returns(address){
        return myMapArray[_index];
    }
}

pragma solidity ^0.8.0;
