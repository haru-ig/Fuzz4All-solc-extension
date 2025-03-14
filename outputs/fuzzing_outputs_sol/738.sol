pragma solidity ^0.8.0;
enum MyEnum {
    a,
    b
}
contract Caller {

    fallback() external {

        console.log("Hello World!");
    }




    fallback() external {
        revert("fallback not called");
    }


    function logEvent() external {}

    fallback () external payable {

        console.log(address(this).balance);
    }
}
