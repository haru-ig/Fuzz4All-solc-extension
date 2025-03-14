pragma solidity ^0.8.0;
library modlib {
    bytes32 constant pubId = keccak256("y.newY");
    uint256 public constant y = 777;
    function modified() public pure returns(bytes32) {
        return pubId;
    }
}
contract newY_mod{
    address newy;
    constructor(bytes32 _newY_){
        require(Modlib.modified() == _newY_);
        newy = Modlib.modified();
    }
    function func() public {
        uint256 z;
        while (y!= 777) {
            y++;
            z = y + modlib.y();
        }
    }
    function modified() public {
        uint256 z;
        while (modlib.y()!= 777) {
            modlib.y++;
            z = modlib.y() + y;
        }
    }
}
