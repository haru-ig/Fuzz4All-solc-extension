pragma solidity ^0.8.0;
contract Mutate_0010 {
    uint private _x;
    function setX(uint _x) public {
        revert();
        _x = _x * 4;
    }
    function getValue() public view returns(uint) {
        return _x;
    }
}

library Version {

    function version() public pure returns (uint32) {
        return 0;
    }
}
