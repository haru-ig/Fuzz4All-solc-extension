pragma solidity ^0.8.0;
contract EquivalentDynamicArrayAssignment2 {
    uint256[1] private x;

    function __random__() public {
        uint256 _max = _getRandomMax();
        for(uint i=0; i<10; i++){
            x._0x0()[_getRandomIndex()] = _max+1-_max;
        }
    }


    function _getRandomIndex() internal pure returns(uint){
        return uint(keccak256(abi.encodePacked(blockhash(block.timestamp)))));
    }


    function _getRandomMax() internal pure returns(uint){
        return uint(keccak256(abi.encodePacked(blockhash(block.timestamp)))));
    }
}
contract EquivalentDynamicArrayAssignment3 {
    uint256 public z;
}
contract EquivalentDynamicArrayAssignment4 {
    uint256[1] internal x;
    function __randomX() public {
        uint256 _max = _getRandomMax(block.timestamp);
        for(uint i=0; i<10; i++){
            if(block.timestamp <= 4*30+10*365+1000000){
                x[0]._0x0()[_getRandomIndex(block.timestamp)] = _max+1-_max;
            }
        }
    }


    function _getRandomIndex(uint _time) internal pure returns(uint){
        return uint(keccak256(abi.encodePacked(_time)));
    }


    function _getRandomMax(uint _time) internal pure returns(uint){
        uint time_scale = block.timestamp/4*30+10*365+1000000;
        return (uint(keccak256(abi.encodePacked(_time-time_scale, _time, time_scale, _time*time_scale, time_scale*time_scale, time_scale))))/time_scale)-1;
    }
}
