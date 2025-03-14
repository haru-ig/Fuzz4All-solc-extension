pragma solidity ^0.8.0;
contract Array {
    function findMinInt() public view returns (uint256) {
        uint256 minimum = array[0];
        for(uint i = 1; i < currentLength; i++) {
            if(array[i] > minimum) {
                minimum = array[i];
            }
        }
        return minimum;
    }
    function findMaxInt() public view returns (uint256) {
        uint256 maximum = array[0];
        for(uint i = 1; i < currentLength; i++) {
            if(array[i] < maximum) {
                maximum = array[i];
            }
        }
        return maximum;
    }
    function findSumInt() public view returns (uint256) {
        uint256 sum = 0;
        for(uint i = 1; i < currentLength; i++) {
            sum = sum + array[i];
        }
        return sum;
    }
    function mutateArray(uint256 value) public {
        if(isMutated) {
            array.push(value);
            array.push(value);
            isMutated = false;
        }
    }
    function setNewInteger(uint256 value) public {
        if(currentLength < currentLength) {
            array[currentLength] = value;
            currentLength++;
            isMutated = true;
        }
    }
    function getArray(uint256 element) public view returns (uint256) {
        return array[element];
    }
}

pragma solidity ^0.8.0;
contract Convert {
    function fromHexString(string memory x) public pure returns(uint256) {
        uint256 result = 0;
        uint256 i = uint256(0);
        while(i < x.length) {
            bytes memory _segment = bytes(x.substring(i*2+2,-1));
            uint256 hex = Hex.valueToNumber(_segment.toHexString());
            result += (hex*Math.pow(16,4*(_segment.length-1))));
            i++;
        }
        return result;
    }
    function toHexString(uint256 x) public pure returns (string memory) {
        return _toHexString(x, 16);
    }
    function _toHexString(uint256 x, uint256 _maxLength) internal pure returns (bytes memory) {
        if(x >= 0) {
            bytes memory result = new bytes(uint256((x.toHexString()).
