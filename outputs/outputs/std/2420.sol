pragma solidity ^0.8.0;
contract MutatedEquivalent {}

pragma solidity ^0.8.0;
contract Complex {

    constructor() public {

    }
}


contract P {

    function f(uint256 p) private {
        if (true) {

        }
    }
}
pragma solidity ^0.8.0;
contract C {
    constructor() public {

    }
    private function privateFunction() private {

    }
    public function publicFunction() public {

    }
}
pragma solidity ^0.8.0;
contract Equivalent3 {
    using Equivalent for Equivalent;
    using MutatedEquivalent for MutatedEquivalent;
    using Complex for Complex;
    uint[] internal arr;
    uint p;
    struct S{
        uint x;
    } public s;

    function equal(uint x){
        return address(this) == x;
    }
}
pragma solidity ^0.8.0;
contract MutatedEquivalent3 {
    using Equivalent for Equivalent;
    using MutatedEquivalent for MutatedEquivalent;
    using Complex for Complex;
    uint[] internal arr;
    uint p;
    S s;


    modifier onlyPrivateFunction {
        require(msg.sender == address(P()));
        _;
    }
    function mutatedEqual(uint x){
        return address(this).mutate(this.s.x);
    }
}
pragma solidity ^0.8.0;
contract MutatedEquivalent32 {
    using Equivalent for Equivalent;
    using MutatedEquivalent for MutatedEquivalent;
    using Complex for Complex;
    uint[] internal arr;
    uint p;
    S s;

    function mutatedEqual2(uint x){
          return x & s.x;
    }

}
pragma solidity ^0.8.0;
contract ArrayBasic {

    function safeIndex(address arr, uint index) internal pure returns (address) {
        require(index < arr.length, "SafeArrayTooSmall");
        return address(uint160(uint256(arr) + uint256(index)));
    }


    function length(address[] memory _arr) public pure returns (uint256) {
        return _arr.length;
    }

    function min() public pure returns(uint){
        return address(uint160(uint256(uint16
