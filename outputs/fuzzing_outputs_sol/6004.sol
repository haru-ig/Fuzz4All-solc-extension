pragma solidity ^0.8.0;
contract MutatedInterface {


    function _getData() public returns (uint, uint) {
        return (0xffff, 0);
    }
}
contract FallbackInterface {
    function fallback() payable {}
}
contract Caller {

    function Fallback() public payable {}


    function getData() public payable returns (uint, uint) {
        return Interface2.getData();
    }


    function _getData() public returns (uint, uint) {
        return FallbackInterface.instance().getData();
    }

    function _mutatedGetData() public returns (uint, uint) {
        return _getData();
    }

    function _revert_to_fallback() public onlyFallback {
        return FallbackInterface.instance().fallback();
    }
}
