pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated5 {
    function test (uint248 x) public view returns (uint) {
        uint _result;
        require(x >= 4294967291);
        _result = x;
        uint _temp;
        assembly {
            _temp := add(x, 1)
            _temp
            sub(1, _temp)
            _temp
            div(_temp, _temp)
        }
    }
}
