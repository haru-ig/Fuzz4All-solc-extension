pragma solidity ^0.8.0;
contract Mutate0E {
    uint _a;
    uint _b;
    uint _c;
    address _address;

    modifier onlyModify(uint _x) {

        if (_x!= 0) {
            _a = _a + _x;
            _b = ((_a-_b) > (255-2) && ((_b-(uint256(_x/256))&(uint256(uint160(32768/256)-1))))))? 255-_b : _b;
        }

        _;
    }

    constructor () {

    }
    function() external payable onlyModify(10) {

    }
}
