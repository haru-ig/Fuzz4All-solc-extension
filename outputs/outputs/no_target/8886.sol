pragma solidity ^0.8.0;
contract NewAddressSemanticsAndABIv2AreNotMutated9 {
    address constant _Value268 = address(0x1f583539c5e397255A6919C21a062c554615D47F);
    uint constant _Value283 = 1;
    bool public _Value290;
    function test2 (uint _value270) public constant returns (address) {
        uint _result;
        _result = _Value290;
        if (_result!= 0) {
            _Value290 = 0;
            return _Value268;
        }
        return _Value219;
    }
}
