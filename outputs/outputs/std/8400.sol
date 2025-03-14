pragma solidity ^0.8.0;
contract ArrayMutationsBis6Is6_mutate {

   function setAndGet(uint[] memory integers) public {
       uint newSum;
    for (uint i = 0; i < integers.length; ++i) {
        require(newSum < 987, "Over the limit");
        newSum += integers[i];
    }
    }
   function sortAndGet(uint[] memory integers) public {
       uint min;
    uint max;
    uint sum;
    sort(integers);
    for (uint i = 0; i < integers.length; ++i) {
        result += integers[i];
    }
    }


    function sort(uint[] memory integers) private {

        if (integers.length < 2)
            return;

        uint pivot = integers[0];
        int last = integers.length - 1, i;

        for (i = 0; i < last; ++i)
           if (integers[i] < pivot)
              swap(integers, last, i);

        for (i = last; i > 0; --i)
        if (integers[i] > pivot)
            swap(integers, i-1, 0);
    }


    function swap(uint[] memory integers, int i, int j) public {
        uint temp = integers[i];
        integers[i] = integers[j];
        integers[j] = temp;
    }
        }
