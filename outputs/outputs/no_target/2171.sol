pragma solidity ^0.8.0;
contract Modifications4_SEM8 {
    constructor(uint256 _y, uint256 _x) public {
        a = _x;
    }

    function f() public returns (uint256) {
        return ((1 <= uint256(4))? uint256(a) : ~uint256(a));
    }

    uint public a;
}


pragma solidity ^0.8.0;



contract Modifications5_SEM8   {

    constructor(uint256 _x, uint256 _y) ModificationsBase_SEM8(_x, _y) public {
    }
}
