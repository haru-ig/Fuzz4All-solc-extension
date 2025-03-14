pragma solidity ^0.8.0;
library StringLib {
    function parseInt(bytes memory data) public pure returns (uint256) {
        uint256 index;
        while ((index = data.indexOf('0x')) >= 0) {
            data = data.slice(0, index);

            uint256 first = parseInt(data);
            data = data.slice(first as uint);
        }
        return parseInt(data);
    }
}
