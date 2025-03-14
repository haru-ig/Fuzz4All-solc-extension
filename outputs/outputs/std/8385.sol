pragma solidity ^0.8.0;
contract ArrayMutationsAis1 {
    uint[15] integers;

    function getInteger(uint idx) public view returns (uint) {
        return integers[idx];
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsAis2 {
    uint[26] integers;
    function getInteger(address idx) public view returns (uint) {
        return integers[idx];
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsAis3 {
    uint[2] integers;
    function getInteger(uint idx) public view returns (uint) {
        return integers[idx];
    }
}
