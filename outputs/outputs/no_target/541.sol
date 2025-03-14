pragma solidity ^0.8.0;
contract ContractA is ContractA {
    using SafeMath for uint256;
    uint public x;
    uint y;
    event Updated(uint _x, uint _y);
    function updateIfXLessThanY(uint256 _x, uint256 _y) public updateOnlyIfXLessThanY(x, _x) {
        y = _y;
        emit Updated(x, y);
    }
}
