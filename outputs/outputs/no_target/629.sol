pragma solidity ^0.8.0;
contract BWrapper is BWrapperInterface {
    function balance() public view returns (uint256) {
        BWrapperInterface _bWrapper = BWrapperInterface(0x7c71feF0C06E38BE778bF91a309A7C540A853a12);
        return uint256(_bWrapper.balance());
    }
}
