pragma solidity ^0.8.0;
struct Addressable {
    mapping(uint256 => uint256) _storedData;

    uint256[] private _storedDataSize;
    constructor(){
        _storedDataSize.push(0);
        _storedData[0] = uint256(-1);
    }
    function storeWithSize(uint[] calldata data) external {
        uint256 len = data.length;
        require(len < 1000, "Store has exceeded its allocated size");
        _storedDataSize.push(len);
        _storedData[len] = uint256(-1);
        for(uint i = 0; i < len; i++){
            _storedData[len - i - 1] = data[i];
        }
    }
    function retrieve() public view returns (uint[] memory){
        uint[] memory result = new uint[](_storedDataSize.length);
        uint256 index = 0;
        for(uint256 i = 0; i < _storedDataSize.length; i++){
            if(_storedData[i] == uint256(-1)){

                result[i] = uint(-1);
            } else {
                result[i] = _storedData[i];
                index++;
            }
        }
        require(index == _storedDataSize.length);
        return result;
    }
    function retrieveWithSize() public view returns (uint256[] memory){
        uint256[] memory result = new uint256[](_storedDataSize.length);
        uint256 index = 0;
        for(uint i = 0; i < _storedDataSize.length; i++){
            if(_storedData[i] == uint256(-1)){

                result[i] = uint256(-1);
            } else {
                result[i] = _storedDataSize[i];
                index++;
            }
        }
        require(index == _storedDataSize.length);
        return result;
    }
}
