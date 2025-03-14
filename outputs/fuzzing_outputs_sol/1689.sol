pragma solidity ^0.8.0;
contract MutatedFallback {



    mapping (uint256 => uint256) private calldataMapping;
    mapping (uint256 => uint256) private storageMapping;
    address payable fallback;

    uint256 public calldatasize;
    uint256 public storagesize;
    uint256 public totalsize;

    constructor(address payable _fallback) {
        fallback = _fallback;
    }

    function receiveData() public pure returns (uint256 data){
        return calldataMapping[data];
    }

    function checkData(uint256 _index) view public returns (bool){
        if (calldatasize > _index && calldataMapping[_index] == 0){
            return true;
        }
        return false;
    }

    function storeData(uint256 _index, uint256 _data) public payable returns (uint256){
        totalsize = totalsize + 4;
        if (storageMapping.length > _index){
            storageMapping[_index] = storageMapping[_index] + _data;
            return 5;
        }
        storageMapping.length++;
        storageMapping[_index] = _data;
        return 6;
    }

    function dataSize(uint _index) view public returns (uint256){
        switch (_index){
            case 0 : return calldatasize;
            case 1 : return storagesize;
            default : return 0;
        }
    }

    function payToSelf(uint256 _index) public pure returns (uint256){
         uint256 _return = (uint256)(this.balance);

         if (dataSize(_index)==5){
             uint256 data = storageMapping[_index];
             _return = _return.add(data);
         }

         return _return;
    }
}
