pragma solidity ^0.8.0;
contract Mutated {
    function test() public payable {
        uint32 j;
        j++;
    }
}


pragma solidity ^0.8.0;
   contract Test {
    address payable adr;
     function Fallback() public payable{
          adr.call{value:100}("");
     }
   }
contract Mutated {
    function test() public payable {
        uint32 j;
        j++;
    }
}

contract Caller {
    function getBalance() public {
    }
    function test() public payable {
        Test test = new Test{value: 110000}(address(this));
        test.getBalance{value: 9000 }();
    }
    function testFail() public payable {
       Test test = new Test{value: 110000}(address(this));
       bytes memory o = "something to fail by ourselves";
       Test.fallback(keccak256(bytes4(keccak256(o)) + (msg.value * 2 + 1000)));



        address payable a =  address(test);
        a.transfer{value: msg.value}("");
    }
}

contract Caller {
    function test() public payable {
        Test test = Test(address(this));
        test.test{value: 9000 }();
        Test test2 = Test(address(this));
        Test.fallback("");
    }
}
contract Simple {
    function test() public {
        uint i = 1;
        i = 2;
    }
}
pragma solidity ^0.8.0;
contract Simple {
    function test() public {
        uint i = 1;
        uint i2 = 2;
        i += i2
