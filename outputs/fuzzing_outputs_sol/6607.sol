pragma solidity ^0.8.0;
contract Legacy {
    function _fallback(address, bytes memory) public payable {}
}
contract New {
    function _fallback(address, bytes memory) public payable fallback{
    }
}
contract CallerFallback {
    function _fallback(address, bytes memory) public payable{

    }
}
contract LegacyFallback {
    function _fallback(address, bytes memory) public payable {

    }
}
contract NewFallback {
    function _fallback(address, bytes memory) public payable fallback{
    }
}
