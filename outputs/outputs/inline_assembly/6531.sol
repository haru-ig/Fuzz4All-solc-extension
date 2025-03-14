pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface IWithMemory {
    function doSomething() external;
}
contract MixedContactsExample107 {



    function doSomething(IWithMemory x1) public {
        x1.doSomething();
        uint f = x1.doSomething();
        IWithMemory y1 = new WithMemory();
        y1.doSomething();
        y1.doSomething();

    }

    function doSomething2() public {
        IWithMemory y2 = new WithMemory();
        y2.doSomething();
        uint f = y2.doSomething();
    }

    contract WithMemory {
        function doSomething2() public {
            uint a = b() + 1;
        }

        function doSomething() public payable {
            uint a = b() + 1;
            for (uint i = 0; i < 1; i = i + 1) {
                a += 1;
            }
        }

        function b() public pure returns (uint){
            return 100;
        }
    }
}
