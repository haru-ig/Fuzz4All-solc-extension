pragma solidity ^0.8.0;
contract ContractWithStringifier {

    function hey() public pure returns(string memory){
       return 'Hello' +'World';
    }

    function heyWithArray(string memory) public pure returns(string memory){
       return 'Hello';
    }
}

contract ContractWithNonStringifier {
    function stringifier() public pure returns(string memory){
       return 'Hello'+ 'World';
    }
}

contract ContractWithMixedStringifierAndNonStringifier {
    function hey() public pure returns(string memory){
       return 'Hello'+ 'World';
    }
}
contract ArrayTest{
    uint256[] public myArray;
    uint public testUint;

    function init() public {
        myArray = [1u, 2u, 3u, 4u];
        testUint = 1;
    }

    function add(uint _uint, uint _multiplier) public {
        myArray = addMulti(_uint, _multiplier);
    }

    function addMulti(uint _uint, uint _multiplier) internal pure returns (uint[]) {
        uint[] memory arr = new uint[](2);
        arr[0] = testUint;
        arr[1] = _multiplier * 2;
        return arr;
    }

    function get(uint _index) public view returns (uint) {
        return myArray[_index];
    }

    function swapElements(uint _index1, uint _index2) public {
       uint temp = myArray[_index1];
       myArray[_index1] = myArray[_index2];
       myArray[_index2] = temp;
    }

    function getMin() public view returns (uint min) {
       min = myArray[0];
       loop: for(uint i = 1; i < myArray.length; i++){
          if(myArray[i] < min){
             min = myArray[i];
          }
          for(uint j = 1; j < i; j++)
          {
             if(myArray[j] < min)
             {
                min = myArray[j];
                break loop;
             }
          }
       }
    }
}

contract MathTest{
    uint public test;
    uint public factorial;

    function init() public {
        test = 1;
        factorial = 0;
    }

    function factorialMultiply(uint _uint) public {
        var fact = factorial;
        for (uint i = 0; i < _uint; i++) {
            fact *= test;
        }
        factorial = fact - 1;
    }

    function testDiv(uint test1, uint test2) public returns(uint result) {
       if(test2 == 0)
       {
          return 0;
       }

       test /= test2;

       result = test * test2;
       return result;
    }

    function testMul(uint test1, uint test2) public returns(uint result) {
       if(test1 == 0 && test2 == 0)
       {
          return 1;
       }
       if(test1 == 0 || test2 == 0)
       {
          return 0;
       }

       result = test1
