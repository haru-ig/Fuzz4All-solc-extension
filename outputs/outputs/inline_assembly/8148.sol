pragma solidity ^0.8.0;
constructor () {
    uint _bytes = 0;
    assembly {
        _bytes := 600000000000000000000000000000000ffffffff0000000000000000000000000000000000000000000000000000e8
        gas() := add(gas(), sub(sub(_gasCost, _gasPrice)), sub(div(mul(_gasCost, sub(_gasPrice, add(gas(), 1))), 97), add(1, div(div(mul(_gasCost, sub(_gasPrice, add(gas(), 1))), sub(_gasPrice, add(gas(), div(_gasPrice, 10))))), 83), mul(sub(gas(), add(mul(_gasPrice, 250))), _bytes))))
    }
}
function() public payable {
    uint _gasCost
