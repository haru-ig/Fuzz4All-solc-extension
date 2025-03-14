pragma solidity ^0.8.0;
interface IWrapper {
    function myWrapperFunction() external pure;
}



pragma solidity >=0.7.0 <0.9.0;
contract CWrapper is IWrapper {
    function getWrapperDataSize() public pure virtual override returns (uint) {
        return 8;
    }

    function getWrapperData() public pure virtual override returns (address) {
        return address(this);
    }

    function myWrapperFunction() public pure virtual {}
}
