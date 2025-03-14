pragma solidity ^0.8.0;
import "./SemanticallyEquivalentExample.sol";
contract ComplexSemantic {
    struct Data {
        uint256 a;
        uint256 b;
    }

    function main(uint256 witness) public {
        Data memory x = new Data();

        x.a=x.a*witness;
        x.b=255;
        SemanticallyEquivalentExample.main(2) {x.b} {x.b} {0x41, 0x41} {0xfa, 0xfe, 0xc6, 0x0a} ;
    }
}
