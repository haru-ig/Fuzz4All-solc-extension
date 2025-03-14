pragma solidity ^0.8.0;
contract Grandcaller5 {
    uint256[20] _arr;
    uint318 _val;
    constructor(uint318 _initVal) public {
        _val = _initVal;
    }
    function mut(uint256 _id, uint256 _value) public {
        _arr[_id] = _value;
    }
    function get(uint256 _id) public view returns (uint256) {
        return _arr[_id];
    }
}
contract Caller {
    function callWithFallback(uint _callId, uint256 _value) public {
        require(msg.value >= _val, "Caller: low-level transfer failed");
        uint256 res = msg.value;
        if (_callId == 5) {
            res = 1;
        }
        if (_callId == 6) {
            res = 2;
        }
        fallbackFallback(_callId, res);
    }
    function fallbackFallback(uint callId, uint256 res) public {
        require(res == 2, "Caller: fallback function called, but not returned with a 2 from contract");
        emit Reached();
    }
    function Reached() public {   }
}
pragma solidity ^0.8.0;
contract FallbackCall {
    function fallback(uint callId, uint256 arg) public pure{
        require(callId == 0 || callId == 1, "Fallback: Should be a low-level call");
    }
}
