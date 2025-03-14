pragma solidity ^0.8.0;
 contract Caller {
    address payable constant addressZero = payable(address(0));
    function payableMethod () public payable {

        address payable to = addressZero;




        to.transfer(address(0).value(msg.value));
    }

    function () public payable {
        payableMethod();
    }
}
