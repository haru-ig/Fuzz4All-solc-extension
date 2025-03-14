pragma solidity ^0.8.0;
contract Array3 {
   uint public integer;
   function set(uint x, bool y) public{
       if(y){
            array[2][2] = x;
       }
   }
}
contract Array10 {
   uint public integer;
   string memory memoryString;
   bytes memory bytesString;
}
contract Array7 {
   string public stringInArray;
}
contract Array6 {
   bytes public stringInArray;
   bytes1[] a = new bytes1[](5);
}
contract Array13 {
    uint public integer;
    bytes memory memoryString;
    bytes1[] memory a = new bytes1[](8);
}
contract Array12 {
    uint public integer;
    bytes[] memory stringInArray;
    bytes[] memory bytesInArray;
}
contract Array11 {
    uint public integer;
    mapping (bytes32=>uint) memory mappingInArray;
}
contract Array04 {
    uint8 public integer;
    uint8[2] memory array;
}
contract Array05 {
    uint public integer;
    uint256[2] memory array;
}
contract Array03 {
    uint public integer;
    uint256 array;
}
contract Math1 {
    function pow(uint x, uint y) public pure returns (uint) {
        uint powx = 1;
        for(uint i = 0; i < y; i++){
            powx *= x;
        }
        return powx;
    }
}
contract Math2 {
    function sq(uint x) public pure returns (uint) {
        if(x % 2 == 0) {
            return x / 1;
        } else {
            return x * 2 + 1;
        }
    }
}
contract Array001 {
    uint public integer;
    bytes memory bytesInArray;
  address memory addressInArray;
   mapping(uint256=>uint) public countInArray;
    function set(bytes memory thisAddress, bytes memory thisValue, bool thisBool, uint thisNumber) public{
       countInArray[thisNumber]++;
        if(thisValue!= bytes1(0x0)){
            this.address.send(value: thisNumber);
        } else {
            addressInArray = thisAddress;
        }

        uint x;
        bytes[] memory b = new bytes[](3);
        b[0] = "foo";
        b[1] = abi.encode(x);
        b[2] = thisBool;
        thisInArray = b;
        if(thisBool == false){
            thisInArray.push(thisBool);
        }
        else {
            thisInArray.pop();
        }

    }
    function getAddress() public view returns (address){
        return addressInArray;
    }
    function getNumber() public view returns (uint){
        return
