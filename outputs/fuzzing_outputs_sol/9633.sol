pragma solidity ^0.8.0;
contract Caller {

    NonFallback private nonFallback;

    fallback();

    constructor(NonFallback nonFallback_, uint8 _version_) {




        if (typeof nonFallback_._fallback == "undefined") {
            nonFallback_._fallback(msg.data);
        } else {
            nonFallback = nonFallback_;
        }




        function () external payable {}
    }


    function () external {

    }
}
