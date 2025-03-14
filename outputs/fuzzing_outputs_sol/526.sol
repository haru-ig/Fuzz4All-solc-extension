pragma solidity ^0.8.0;
contract CallerFallbackTest {
    address public owner;
    uint256 public constant n = 3;
    modifier when() {
        require(msg.value == 0, '0');
        _;
    }
    CallerFallbackTest0 public contract0;
    CallerFallbackTest public contract1;
    modifier whenNotZero(address _addr) {
        require(address(this)!= _addr, '0');
        _;
    }
    constructor(CallerFallbackTest0 _contract0, CallerFallbackTest _contract1) {
        owner = msg.sender;
        contract0 = _contract0;
        contract1 = _contract1;
    }
    function fallback() public whenNotZero(address receiver) {
        uint256 r = contract0.fallback.value(contract0.fallback.value(0))();
        uint256 s = contract1.fallback.value(contract1.fallback.value(0))();
        uint256 _v;
        _sendToReceiver(receiver, r, s, _v);
    }
    function _sendToReceiver(address _to, uint256 _r, uint256 _s, bytes memory _v) private {
        if (_v.length == 0) {
            _to.call{value: _r}('');
        } else {
            _to.call(_v);
        }
    }
}
