pragma solidity ^0.8.0;
contract MutateProgram {
    function _add_uint_uint(uint x, uint y) private pure returns (uint) {
        return x + y;
    }

    function sum_uint_uint(uint x, uint y) public pure returns (uint) {
        return _add_uint_uint(x,y);
    }
}
contract ArrayProgram {
    uint max_array_length = 10;
    uint internal[] memory arrays;
    function set (uint i, uint x) public {
        require(i < max_array_length, "Length exceeded");
        arrays[i] = x;
    }
    function get (uint i) public view returns (uint) {
        require(i < max_array_length, "Length exceeded");
        return arrays[i];
    }
    function length () public view returns (uint) {
        return max_array_length;
    }
    function min () public pure returns (uint) {
        uint min = uint(-2**31);
        return min;
    }
    uint[] array_sort(uint[] memory arr1, uint[] memory arr2) {
        require(min(arr1) <= min(arr2));
        uint cmp_result = min(arr1);
        uint j;

        for (j = 0; j< max_array_length; ++j) {
            if (cmp_result >= arr1[j] && cmp_result <= arr2[j]) {
                cmp_result = arr1[j];
                break;
            }
        }

        for (j = 0; j<max_array_length; ++j) {
            for (uint k=j+1; k < max_array_length; ++k) {
                if (arr1[j] > arr2[k]) {
                    uint temp = arr1[j];
                    arr1[j] = arr2[k];
                    arr2[k] = temp;
                }
            }
        }
        return arr2;
    }
    function sort_uint() public {
        uint[] memory a = [1,3,5];
        uint[] memory b = [10, 2, 32];
        uint[] memory s1 = array_sort(a,b);
        uint e = 10;
        uint s;
        bytes memory r = "The following are the values of the arrays:\n";
        r += "(";
        for (uint i = e; i < 79; ++i) { r += s+" "; }
        r += ")["+e+"-"+max_array_length.sub(e)+"]\n";
        uint x = s;
        for(uint i=0; i< max_array_length; ++i) {
            for(uint j=0; j < j+1
