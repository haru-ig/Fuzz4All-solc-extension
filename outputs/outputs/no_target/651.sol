pragma solidity ^0.8.0;
library WrapperFactory {
    address IWrapperFactory = 0x41869B0E46998422dFf2979D34D0bC18797C28C7;
    address public immutable wrapperImplementor;
    bytes32[] internal constant CONSTRUCTOR_CALL_DEFAULT_VALUES;
    function initialize(address _wrapperImplementor) public returns (WrapperData memory) {
        wrapperImplementor = _wrapperImplementor;
        (CONSTRUCTOR_CALL_DEFAULT_VALUES)
        return (WrapperData({}));
    }
    function createWrapper(bytes calldata args) external returns (address) {
        require(IWrapperFactory == wrapperImplementor, "Incorrect IWrapperFactory address passed");

        WrapperData memory wrapperData = abi.decode(args, (WrapperData));
        (
        )

        contractWrapper addressContractWrapper = contractWrapper(abi.decode(wrapperData.getData(), (address)));
        require(addressContractWrapper!= address(0), "Contract address is 0");

        return addressContractWrapper;
    }
    event Revert(WrapperData data);
    function constructorCallDefaultValues() public pure virtual returns (bytes32[]) {
        return CONSTRUCTOR_CALL_DEFAULT_VALUES;
    }
    function constructorCall(address _owner, bytes32 _selector) public pure virtual {
        require(
            contractWrapper(_owner)
                && IWrapper(_owner).supportsInterface(_selector),
            "Incorrect data type passed"
        );
    }
}
pragma solidity ^0.8.0;
contract WrapperFactory {
    address public immutable wrapperImplementor;
    bytes32[] internal constant CONSTRUCTOR_CALL_DEFAULT_VALUES;
    event Revert(WrapperData data);
    function initialize(address _wrapperImplementor) public returns (WrapperData memory) {
        wrapperImplementor = _wrapperImplementor;
        (CONSTRUCTOR_CALL_DEFAULT_VALUES)
        return (WrapperData({}));
    }
    function createWrapper(bytes calldata args) external returns (address) {
        require(IWrapperFactory == wrapperImplementor, "Incorrect IWrapperFactory address passed");

        WrapperData memory wrapperData = abi.decode(args, (WrapperData));
        (
        )
