pragma solidity ^0.8.0;
contract MutateWipeBc6 {
    uint public rBc6;

    function _next() public {
        uint[] memory _arr;
        uint _rBc6 = rBc6;
        for (uint x = 0; x < 20000; x++) {
            _arr.push(_rBc6);
            _rBc6 += 32;
        }
    }
}
