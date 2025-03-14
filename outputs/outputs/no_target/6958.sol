pragma solidity ^0.8.0;
contract TestPrecompiled00608 {
    event Evt(string _s);
    address payable payableRef;
    function f()public returns (uint160) {
       return uint160(address(address(payableRef)).call{value:10000}("");
       }
       }

    constructor(address payableRef_) public {
        payableRef = payableRef_;
       emit Evt("My event");
    }

}
