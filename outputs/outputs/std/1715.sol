pragma solidity ^0.8.0;
contract RandomNumberProvider {
    event Log(uint _random);
    function randUint() view public returns (uint){
        return uint(block.timestamp % 100813726855);
    }
    function randUint(uint _low, uint _high) view public returns(uint){
        return uint(block.timestamp % (_high - _low + 1)) + _low;
    }
    function randArrayUint(uint256 _len) public view returns(uint[]){
        uint[] memory _nums = new uint[](_len);
        uint _index;
        for(uint _i = 0; _i < _len; _i++){
            _nums[_i] = randUint(1, 10);
        }
        return _nums;
    }
}
