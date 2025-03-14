pragma solidity ^0.8.0;
contract FirstGenerationExampleContract {
    uint256[] _value;
    function getValue() public {
        (uint256 min, uint256 max) = _getValue();
        for (uint256 i = min; i <= max; i++) {
            _value.push(i);
        }
        (uint256 sum) = _getSum();
        for (uint256 i = 0; i < _value.length; i++) {
            (uint256 sum);
            (uint256) = _getValue();
        }
    }
    function getValue2() public view returns (uint256, uint256) {
        (uint256 min, uint256 max) = _getValue();
        (uint256 sum1, uint256 sum2) = _getSum();
        (uint256 sum) = [sum1, sum2];
        for (uint256 i = min; i <= max; i++) {
            _value.push(i);
            (uint256) = _getValue();
            (uint256);
        }
    }
    function _getSum() public view returns (uint256) {
        uint256 min = (uint256)min(1, 65535);
        uint256 max = (uint256)max(1, 65535);
        uint256 sum = 0;
        for (uint256 i = min; i <= max; i++) {
            sum = sum + i;
        }
        return sum;
    }
    function _getValue() public view returns (uint256) {
        uint256 min = uint256(1);
        uint256 max = uint256(999);
        return min + uint256(Math.random() * ((max - min) + 1));
    }
}
