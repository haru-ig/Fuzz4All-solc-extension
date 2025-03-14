pragma solidity ^0.8.0;
contract Test10 {
    uint8[100] memory _value;
    uint8 memory _mem;
    uint8[42] memory _value1;
    constructor()
        public
        payable
    {
        _mem = _value1[41];
        _value[4] = _mem;
    }
}
pragma solidity ^0.7.0;
library A {
    function blah<T>() public pure {
        assembly {
            let n := 4
        }
    }
}
contract Test11 {
    A.blah() public {

    }
}
contract Test11a {
    A.blah<uint256[]>() public pure {

    }
}
