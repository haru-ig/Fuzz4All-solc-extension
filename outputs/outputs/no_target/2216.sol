pragma solidity ^0.8.0;
contract Modification1 {
    function f(uint _x, uint _y) public view returns(uint) {
        if(_x == 0 || _y == 0)
            revert("Invalid input");
        return _x + _y;
    }
}
pragma solidity >=0.8.0;
