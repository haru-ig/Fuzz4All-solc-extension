pragma solidity ^0.8.0;
contract Y {
    struct Foo {
        uint256 value;
    }

    function set(address addr, uint256 value) public {
        Foo memory t = addr.balance.value(address(this).balance) {
            value: value
        }();
    }
}


library Lib {
    event Goto;

    function callData(uint256 value) internal pure returns (uint256) {
        return value;
    }

    function returnData(uint256[2] memory data) internal pure returns (uint256[2] memory data1){
        data1 = data;
        assembly {
            return(add(data1, 0x20), mload(data1))
        }
    }

    function returnNested(uint256[2] memory data1) internal pure returns (uint256[2][2] memory data) {
        data = data1;
        data[1][0] = data[1][1];
        data[1][1] = callData(data[0][1]);
    }

    function returnNestedTwo(uint256[2][2] memory data) internal pure returns (uint256[2][2] memory data1){
        data1 = data;
        data1[0][1] = data1[1][0];
        data1[1][0] = data1[0][1];
        data1[1][1] = returnNested(data1);
    }

    function callData2(uint256 value) internal pure returns (uint256) {
        Goto;
        return value;
    }

    function returnFunction(uint256 arg, uint256 ret) internal pure returns (uint256){
         if (arg > 0) {
            return (ret + arg) * 2;
         } else{
            return 90;
        }
    }
}



pragma solidity =0.8.14;

contract test2{
  address payable _receiver;
}





pragma solidity =0.8.14;

contract test3{
    bytes20 public data;
    function () payable public(){
        address payable receiver=msg
