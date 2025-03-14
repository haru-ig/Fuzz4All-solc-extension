pragma solidity ^0.8.0;

contract ExampleQ5 {
    modifier onlyExample {
        require(true);
        _;
    }

    function addWithoutExample() public onlyExample {
        uint y = 1;
    }



    function doWork() public returns(bytes memory, bytes memory) {
        return (bytes(aDummie), bytes(anotherDummy));
    }

}
