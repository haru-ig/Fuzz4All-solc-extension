pragma solidity ^0.8.0;
contract Caller {
    function call1() public view returns (string memory) {
      return "abc";
    }
    function call2() public pure returns (uint) {
        return 123;
    }
    function call3() public pure returns (bytes32) {
      return "ABC";
    }
    uint constant one = 1;
    bytes32 constant two = '2';
}

pragma solidity ^0.8.0;
contract Inheritance {


    function call1() public view returns (address) {
        return address(this);
    }



    function call2() public view returns (uint) {
      return one;
    }



    function call3() public view returns (bytes32)  {
        return two;
    }
}
