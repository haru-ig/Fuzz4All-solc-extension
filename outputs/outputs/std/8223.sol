pragma solidity ^0.8.0;
contract Array {
    uint x;
    uint [10] arr;
    function sum(uint a) public view returns(uint){
        return (sum_iterative(a, 0, arr.length, 0));
    }
    function minimum(uint a) public view returns(uint){
        return (minimum_iterative(a, 0, arr.length, 0));
    }
    function get(uint index) public view returns(uint){
        return (arr[(arr.length-1)-index]);
    }
    function set(uint index, uint x) public{
        arr[(arr.length-1)-index] = x;
    }
    function length() public view returns(uint){
        return arr.length;
    }
    function initialize_arr(uint[] memory arr1) public {
        x = 0;
        for(uint i = 0; i < arr1.length; i++) arr[i] = arr1[i];
    }
    function sum_iterative(uint a, uint s, uint i, uint s1) private view returns(uint){
        if(i == arr.length){
            uint result = a + s1;
            return (result);
        }
        uint temp = sum_iterative(a, a+(s/arr[i], 0), i+1, s1 + (s/arr[i], 0));
        return (temp);
    }
    function minimum_iterative(uint a, uint s, uint i, uint s1) private view returns(uint){
        if(i == arr.length){
            uint result = a + s1;
            return (result);
        }
        if(arr[i] < arr[i+1]){
            uint temp = minimum_iterative(a, a+(s/arr[i], 0), i+1, s1);
            return (temp);
        }
        uint temp = minimum_iterative(a, a+(s/arr[i+1], 0), i+1, (arr[i]+s1));
        return (temp);
    }
}
