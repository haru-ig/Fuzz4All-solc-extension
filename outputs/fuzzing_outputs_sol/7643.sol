pragma solidity ^0.8.0;
contract FailureCase {
    constructor()
    {

    }
    function test() internal {

        send(msg.sender);
    }
    function send(address payable _addr) internal {
        _addr.transfer(1);
    }
}
contract FailWithoutFallbackSemanticEquivalence {
    function test() internal view {
        _test();
    }
    function _test() internal {


        (bool sent, ) = msg.sender.call{value:1}("");


        if(sent) {
            return;
        }


        msg.sender.transfer(1);
    }
}
contract Caller {
    function test() public {
        new FailureCase().test();
        try FallbackSemanticEquivalence(address(this)).test() {}
        FallbackSemanticEquivalence(address(this)).test { value:1 }();

        (bool sent, ) = msg.sender.call{value:1}("");
        if(sent) {
            return;
        }
        _newTest();
    }
    function _newTest() internal {
        (bool sent, ) = msg.sender.call{value:10}("");
        if(sent) {
            return;
        }
    }
}
