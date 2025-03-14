pragma solidity ^0.8.0;
contract Original {
    uint[] array1;
    uint[] array2;


    function Original () {

    }


    modifier readWrite(uint i)
    {
        require(array1[i] == 1);
        _;
    }


    modifier readOnthe(uint i)
    {
        require(array2[i] == 1);
        _;
    }


    modifier readOnly
    {
        require(array1[0] == 1);
        _;
    }


    modifier writeOnly
    {
        require(array1[1] == 1);
        _;
    }


    modifier writeReadWrite
    {
        require(array1[1] == 1 && array2[1] == 1);
        _;
    }



    function notEqual(uint[] memory left,uint[] memory right) public pure readWrites(1) readOnthe(1) writeOnthe(1) returns(uint,bool)
    {
      uint sum = 0;
      for (uint i = 0; i < left.length; ++i) {
        sum = sum.add(not_equal(left[i],right[i]));
      }

      uint answer;
      if (not_equal(sum,0))
      {
        answer = 1;
      } else
      {
        answer = 0;
      }

      return (sum, answer);
    }


    function notEqualWriteArrayOne(uint[] memory left, uint[] memory right) public readWrite (1) writeOnly returns(uint[])
    {
      array2 = right;
      return notEqual(left, right);
    }

    function notEqualOntheArrayOne(uint[] memory left, uint[] memory right) public readOnthe (1) writeOnly returns(uint[])
    {
      array1 = left;
      return notEqual(left, right);
    }

    function notEqualWriteArrayTwo(uint[] memory left, uint[] memory right) public readOnly returns (uint[], bool) {
      array2 = left;
      return notEqual(left, right);
    }

    function notEqualOntheArrayTwo(uint[] memory left, uint[] memory right) public readOnthe returns (uint[],bool) {
      array1 = right;
      return notEqual(left, right);
    }

    function notEqual
