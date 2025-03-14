pragma solidity ^0.8.0;
contract C {
    uint[4][] array;
    uint a;
    function modifiesArray(uint[4] memory array) public pure returns (bool) {
        return array[0] > 0;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint[100] array;
    uint a;
    function modifiesArray(uint[100] memory array) public pure returns (bool) {
        return array.length > 0;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint[4] array;
    uint a;
    function modifiesArray(uint[] memory array) public pure returns (bool) {
        return array.length > 0;
    }

    function modifiesArray(uint[100] memory array) public pure returns (bool) {
        return array.length > 0;
    }
}
