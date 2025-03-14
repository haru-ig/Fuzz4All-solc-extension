pragma solidity ^0.8.0;
contract ArrayContract {
    uint256[] data;
    uint256 value;
    function get(uint256 i) public view returns(uint256 data){
        require(i < data.length, "i index out of bounds");
        return data[i];
    }
    function set(uint256 i, uint256 v) public {
        require(i < data.length, "i index out of bounds");
        value = v;
        data[i] = v;
    }
    function append(uint256 v) public {
        value = v;
        data.push(v);
    }
    function pop() public returns(uint256){
        require(data.length > 0, "Nothing to pop");
        uint256 v = data.pop();
        value = v;
        return v;
    }
    function clear() public {
        data.length = 0;
        value = 0;
    }
    function push(uint256 v) public {
        require(v > 400, "Data must not be greater than 400");
        data.length++;
        value = v;
        data.push(v);
    }
    function min() public returns (uint256){
        uint256 minValue = 0;
        for (uint256 x; x < data.length; x++) {
            if (data[x] < minValue) {
                minValue = data[x];
            }
        }
        return minValue;
    }
    function max() public returns (uint256){
        uint256 maxValue = 0;
        for (uint256 x; x < data.length; x++) {
            if (data[x] > maxValue) {
                maxValue = data[x];
            }
        }
        return maxValue;
    }
    function sum() public returns (uint256){
        uint256 sumValue = 0;
        for (uint256 x; x < data.length; x++) {
            sumValue = sumValue + data[x];
        }
        return sumValue;
    }
}
