pragma solidity ^0.8.0;
interface Mutater15 {
    function setReturnAddress15(address _address) public;
    function getReturnAddress15() public view returns (address);
}

pragma solidity ^0.8.0;
contract Mutater16 {
    function callReturnAddress16() public returns (Mutater15, Mutater15, Mutater15) {
        return (returnAddress15, returnAddress16, returnAddress17);
    }
    address public returnAddress15;
    address public returnAddress16;
    address public returnAddress17;
}

pragma solidity ^0.8.0;
contract Caller {
    function callReturnAddress18(
        address _returnAddress19,
        Mutater15 _returnAddress20
    ) public returns (Mutater15, Mutater15, Mutater15 _returnAddress21) {
        return (_returnAddress19, _returnAddress20, returnAddress22);
    }
    function callReturnAddress23(
        Mutater15 _returnAddress24,
        Mutater15 _returnAddress25
    ) public {
        returnAddress21 = _returnAddress24;
        returnAddress20 = _returnAddress25;
        returnAddress22 = _returnAddress25;
    }
    address internal returnAddress21;
    Mutater15 public returnAddress20;
    Mutater15 public returnAddress22;
}
