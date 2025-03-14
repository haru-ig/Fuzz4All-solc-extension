pragma solidity ^0.8.0;
contract MutatedArray {
    uint256[] private immutable arr;
    function setMax(uint256 val) public {
        arr[0] = val;
    }
    function getMax() public view returns(uint256) {
        return arr[0];
    }
    function setMin(uint256 val) public {
        arr[0] = val;
    }
    function getMin() public view returns(uint256) {
        return arr[0];
    }
    function setSum(uint256 val) public {
        arr[0] = val;
    }
    function getSum() public view returns(uint256) {
        return arr[0];
    }
    function setArr(uint256[] memory _arr) public {
        arr = _arr;
    }
    function getArr() public view returns(uint256[]) {
        return arr;
    }
    function setMinInPlace(uint256 val) public returns(uint256) {
        uint256 min;
        for(uint256 i = 0; i < address(this).balance; i++) {
            min = arr[i];
            for(uint256 j = i+1; j < address(this).balance; j++) {
                if(arr[j] < min) min = arr[j];
            }
            if(min < val) min = val;
            arr[i] = min;
        }
        return min;
    }
    function getMaxInPlace(uint256 val) public returns(uint256) {
        uint256 max;
        for(uint256 i = address(this).balance-1; i >= 0; i--) {
            max = arr[i];
            for(uint256 j = i-1; j >= 0; j--) {
                if(arr[j] > max) max = arr[j];
            }
            if(max > val) max = val;
            arr[i] = max;
        }
        return max;
    }
    function getMinInPlace(uint256 val) public returns(uint256) {
        uint256 min;
        for(uint256 i = 0; i < address(this).balance; i++) {
            min = arr[i];
            for(uint256 j = i+1; j < address(this).balance; j++) {
                if(arr[j] > min) min = arr[j];
            }
            if(min < val) min = val;
            arr[i] = min;
        }
        return min;
    }
    function getSumInPlace(uint256 val) public returns(uint256) {
        uint256 sum = uint256(0);
        for(uint256 i = 0; i < address(this).balance; i++) {
            sum += arr[i];
        }
        return sum;
    }
}
