pragma solidity ^0.8.0;
contract NoMutations {
        uint a;
        uint b;
        uint c;
    bytes public test = "";
        function test() public {
        a = 3;
        b = 2;
        c = 1;
        c = 2;
        b = 1;
        test += "a\n";
        if(a < 3 || b == 2){
            b = 3;
           c = c+1;
        }
        if(a >= 3 || b < 3 || c < 3 || test!= "a\na"){
           a = a;
           b = b;
           c = c;
        }
    }
}

pragma solidity ^0.8.0;
contract Caller {
        bytes4 constant _fallbackSelector = 0x00000000;
        bytes private _received = "";
        constructor() external {
                uint _code;
                require(bytes(_code.functionSelector).length > 0);
        }
        receive() external pure {
                require(bytes4(_fallbackSelector).selector == _fallbackSelector);
                _received += "fallback\n";
        }
}
