pragma solidity ^0.8.0;
contract Array_sol {
    function newArray(uint256 amount) public returns (Array_sol memory) {
        require(amount < 1024, "should not go over 1GB arrays");
        Array_sol memory newArray_sol = Array_sol(amount);
        return newArray_sol;
    }

    function newArray2(uint256[] memory _amount) public returns (Array_sol[] memory) {
      Array_sol[] memory newArray_sol = new Array_sol[](_amount.length);
      for (uint256 i = 0; i < _amount.length; ++i) {
        newArray_sol[i] = newArray(_amount[i]);
      }


      return;
    }
  }

contract Array_sol {
    uint256 constant MIN_CAPACITY = 1;
    uint256 constant MAX_CAPACITY = 1024;
    uint256 constant UNIT = 1;

    uint256[] public arr;


    Array_sol();

    constructor (uint256 size) public
    {
        require( size > MIN_CAPACITY, "cannot be constructed with a 0 bytes length");
        require( size < MAX_CAPACITY, "cannot be constructed with a greater than " + MAX_CAPACITY + " bytes length");
        arr = new uint256[](size);
    }

    function add(uint256 val) public {
        return add(val, 1);
    }

    function add(uint256 val, uint256 amt) public {
       require( amt < 10000, "does not want to add larger value than 10000");
        if (arr.length < count + 1) {
            uint256[] memory newArr = new uint256[](count + 1);
            for (uint256 i = 0; i < arr.length; i++)
                newArr.push(arr[i]);
            newArr = mergeAndResize(newArr);
        }
        count += 1;
        arr[count -1] = val;
        arr[count - 1] += amt;
    }

    function min() public view returns (uint256) {
        uint256 min;
        require(count > 0, "cannot get the min when " + count + " items in array are 0 " );
        uint256 pos = count -1;
        while (pos > 0) {
            if (arr[pos] < min) {
                min = arr[pos];
                pos -= UNIT;
            } else if (arr[pos - UNIT] == min && arr[pos] > arr[pos - UNIT])
                pos -= UNIT;
            else
                pos -= UNIT;
        }
        return min;
    }

    function max() public view returns (uint256)  {
        uint256 max;
        require(count > 0, "cannot get the max when " + count + " items in array are 0 "
