pragma solidity ^0.8.0;
contract ModifierEquivalenceMutated {
        struct Extra { uint x1; uint x2; uint x3; }
        Extra _extra;
        function receiveExtra(uint w) public {
                _extra.x1 = 1;
        }
        function run() public {
                for(uint j = 1; j < 11; j++) {
                        _extra.x3 = _extra.x3 + j;
                }
                _extra.x2 = 1;
        }
        function getExtra() public view returns(Extra memory) {
                return _extra;
        }
}

pragma solidity ^0.8.0;
contract InterfaceMethod {
        function call(address payable source) external payable returns (bool);
        function receive(address payable source) external payable {
        }
}
contract Caller {
        function payableFallback(uint a) public payable {}
        function nonpayableFallback(uint a) public {}
}
