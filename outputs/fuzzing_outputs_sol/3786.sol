pragma solidity ^0.8.0;
contract Example18 {
    function example18(uint256 _num1, uint256 _num2) public pure {
        Example17 c = Example17(_num1);
        require (c._check(_num2));
    }
    function _check(uint256 _num) private view {
        if (_num == 1) {
            uint256 result = _num - 1;
            require (result > 0);
        } else {
            uint256 result = _num - 1;
            require (result > 0);
        }
    }
}
