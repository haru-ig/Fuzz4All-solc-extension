pragma solidity ^0.8.0;


contract ArrayLib {

    function nullTerminated(bytes memory _arr) internal pure returns (bool) {

        return (uint256(_arr) > 0);
    }


    function length(bytes memory _arr) internal pure returns (uint) {
        uint8 length = 0;
        while (length < _arr.length) {
            length += 1;
        }
        return uint(length);
    }
}
