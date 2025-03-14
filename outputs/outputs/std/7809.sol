pragma solidity ^0.8.0;
contract Convert {
    uint public multiplier;
    function getMultiplier() public view returns (uint) {
        return multiplier;
    }
    function setMultiplier(uint inMultiplier) public {
        multiplier = inMultiplier;
    }
}

pragma solidity ^0.8.0;
contract Multiprecision {
    uint public precision;
    function getPrecision() public view returns (uint) {
        return precision;
    }
    function setPrecision(uint inPrecision) public {
        precision = inPrecision;
    }
}



/* the Free Software
