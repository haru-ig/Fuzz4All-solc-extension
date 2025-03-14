pragma solidity ^0.8.0;
import "./Caller.sol";
contract MakerOne {
    address payable target;
    address payable other;
    uint gas;
    constructor(uint _gas) {
        gas = _gas;
    }


    function callFallbackAndOther() public {


        target.call{value: gas}("");


        target.transfer(gas, address(0));


        other.transfer(0.1 ether);


        target.call{value: 33}("");

    }
}

pragma solidity ^0.8.0;
import "./MakerOne.sol";
import "./Caller.sol";
contract MakerTwo {
    address payable gasTarget, otherTarget;
    uint gas1, gas2;
    constructor(uint _gas1, uint _gas2) {
        gas1 = _gas1;
        gas2 = _gas2;
    }


    function callAndCallFallback() public {


        Caller.address.transfer(gas1, abi.encodeWithSignature(""));
        gasTarget.call{value: gas2}("");
        Caller.address.transfer(gas1, abi.encodeWithSignature(""));

        gasTarget.call{value: gas1}("");
    }
}
