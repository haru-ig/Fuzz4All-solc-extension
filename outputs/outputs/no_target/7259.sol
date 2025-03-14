pragma solidity ^0.8.0;
contract ModdedAbiCoder {
    uint constant internal max = 5;
    uint public x_=1;
    uint public y_=2;

    function setX(uint x) public {
        if (x_ == max || x_ > x) {
            revert();
        }
        x_ = x;
    }

    function setY(uint y) public {
        if (y_ == max || y_ > y) {
            revert();
        }
        y_ = y;
    }

    function decodeBool(bytes memory input) public pure returns (bool) {
        require(bytes(abi.encodePacked(uint8(1), input)).length <= 65);
        return(abi.decode(input, (bool)));
    }

    function _check() internal pure {
        require(_equal(x_, y_));
    }

    function _equal(uint _v1, uint _v2) private pure returns (bool) {
        uint k = 10**28;
        while((_v1 /= k) > 0) {
            if((_v2 /= _v1) < uint(uint8(0))) {
                return(false);
            }
        }
        return(true);
    }
}
