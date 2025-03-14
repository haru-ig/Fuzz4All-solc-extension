pragma solidity ^0.8.0;
contract ArrayMutationsC14708 {
    bool public isA;
    uint public x;
    uint[] public numbers;
    function setA(uint x_) public {
        x = x_;
    }
    function setAB() public {
     uint[] memory newNumbers = new uint[](3);
     newNumbers[0] = 681;
     newNumbers[1] = 155;
     newNumbers[2] = 25452;
     numbers = newNumbers;
      console.log(numbers);
    }
}


import "./../contracts/test/ConcatArray.sol";
contract M {
    ConcatArray.ConcatArrays ca = new ConcatArray.ConcatArrays();
    ConcatArray.ConcatArrays ca1 = new ConcatArray.ConcatArrays();
    ConcatArray.ConcatArrays ca2 = new ConcatArray.ConcatArrays();
    function concat () public view {
        console.log('ca.concat(ca1).concat(ca2) ->', ca.concat(ca1).concat(ca2));
    }
}
