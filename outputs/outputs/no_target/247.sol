pragma solidity ^0.8.0;
interface IMutable {
    function _mutate() external;
}
interface IImmutable {
    function balance() external view returns (uint);
}
contract ContractA {

    IImmutable immutableI;
    bool public isMutated = false;
    address payable contractContractA;
    constructor(IImmutable immutableI) {
        contractContractA = address(new ContractA(contractContractA, immutableI));
        immutableI = immutableI;
    }
    function mutate() public {
        immutableI._mutate();
        isMutated = true;
      }
    function isMutated() public view returns (bool) {
        return isMutated;
    }
}
contract ContractB is IImmutable, IMutable {
    bool isMutated = false;
    bool public immutableFlag;
    struct State {
        IMutable imut;
        IImmutable immutableI;
        IImmutable immutableI5;
    }
    State memory state = State({imut: this});
    event Logs(address immutableI);
    constructor(IImmutable immutableI, IMutable imut) {
        IImmutable immutableI4 = immutableI;
        if (address(imut) == immutableI4) {
            contractContractA = address(imut);
        } else {
            immutableI5 = immutableI4;
        }
    }
    function mutate() public {
        IMutable imut;
        IImmutable immutableI3 = immutableI5;
        if (immutableI3 == immutableI5) {
            isMutated = true;
            imut = imut;
            immutableFlag = immutableFlag;
            state.imut = imut;
        }
    }
    function setTo(IImmutable immutableI) public {
        IMutable imut = state.imut;
        if (imut == this) {
            imut = immutableI;
        }
        state.immutableI5 = immutableI;
        state.imut = imut;
    }
    function isMutated() public view returns (bool) {
       return isMutated;
    }
    function setFlag(bool immutable) public {
        IMutable imut;
        IImmutable immutableI2 = immutableI5;
        if (immutableI2 == immutableI5) {
            imut = immutableI5;
        }
        state.immutableI5 = immutableI5;
        state.imut = imut;
    }
}
