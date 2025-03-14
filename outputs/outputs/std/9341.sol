pragma solidity ^0.8.0;
contract Array
{
    uint256 private _array;

    constructor (uint256 _data) {
        _array = _data;
    }

    function getMin () public pure returns (uint256){
        return 0;
    }

    function getMax () public pure returns (uint256){
        return 0;
    }

    function getSum () public pure returns (uint256){
        return 0;
    }

    function getMin (uint256 _array) public pure returns (uint256){
       return 0;
    }

    function getMax (uint256 _array) public pure returns (uint256){
        return 0;
    }

    function getSum (uint256 _array) public pure returns (uint256){
        return 0;
    }

    function setArray (uint256 _data) public {
        _array = _data;
    }
}
pragma solidity ^0.8.0;
contract Random {
    constructor (){}

    function generateArray() public returns (uint256[] memory){
        uint56 elementCount = 10;
        uint256 min;
        uint256 max;
        uint256 sum;
        uint256 random;
        uint56 randomIndex;
        uint56 offset;
        uint56 i;

        offset = 0;
        for (i = 0; i < elementCount; i++) {
            min = (random >> 256) - 1;
            max = (2**255) + 1;

            random = uint256(keccak256(abi.encodePacked(min, max)));
            randomIndex = uint56(random) - 1 + offset;

            if (randomIndex < 0) {
                randomIndex += elementCount;
            }

            sum += uint256(random % 10);
            offset++;
        }

        return new uint256[](elementCount);
    }
}
