pragma solidity ^0.8.0;
library Mutate {
    IMutable[] immutables;
    function _mutate(IMutable _mut) {
        immutables.push(_mut);
    }
}
interface IImmutant {
    function _mutate() external;
}
interface IImmutable {
    function balance() external view returns (uint);
}

contract Mutations {
    IImmutant[] immutables;
    function _mutate(IImmutant _im) {
        immutables.push(_im);
    }
}




pragma solidity ^0.8.0;
contract Mutations {
    function _mutate(IImmutant _im) {
        IImmutant[] memory _ims = new IImmutant[](1);
        _ims.push(_im);
    }
}




pragma solidity ^0.8.0;

library Mutations {
    IMutable[] immutables;
    function _mutate(IMutable _mut) {
        immutables.push(_mut);
    }
}


pragma solidity ^0.8.0;
library Mutations {
    IMutable immutables;
    function _mutate(IMutable _mut) {
        IImmutant[] memory _ims = new IImmutant[](1);
        _ims.push(_mut);
        immutables = I
