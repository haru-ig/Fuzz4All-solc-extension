pragma solidity ^0.8.0;
interface I {
    uint256 public constant ivIV;
    function f(uint32 _x) external pure returns (uint32);
    function setIV(uint32 _x) external;
}
contract C {
    I public i;

    constructor() public {

        assembly {

            i.setIV(ivIV)
        }
    }

    uint public iv;
    constructor() public {
        assembly {

          i.setIV(f(ivIV))
        }
    }


    constructor(address f) public {

       i.setIV(0x01E4773741CECFA1CC5E5F10B37819202BDDE0CD)
    }

    function f(uint32 _x) public pure returns(uint32) {
        iv = _x;
        return iv;
    }
}
