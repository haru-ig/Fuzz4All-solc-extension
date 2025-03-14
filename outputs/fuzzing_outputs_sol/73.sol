pragma solidity ^0.8.0;
contract TestCallAndFallback {

    contract A {
        function getSomething(address receiver, bytes memory data) public payable{
            receiver.call{value: msg.value} (data);



        }
    }

    contract B {
        function getData(uint value, address receiver) public {
            receiver.call.value(value)(abi.encodeWithSignature("getData()"));



            receiver.call{value: value} (abi.encodeWithSignature("getData()"));


        }
    }

    function test1(uint value) public payable {
          B b;
          b.getData(value, address(this));
          A a;
          address[] memory array = new address[](1);
          address[] memory array2 = new address[](2);
          array[0] = address(this);







          contract A a2;
          a2.getSomething(array, abi.encodeWithSignature("getData()"));
          contract B b2;
          b2.getData(value, address(b2));
          a2.getSomething(address(b2), abi.encodeWithSignature("getData()"));
      }

}
