pragma solidity ^0.8.0;
contract ContractAbi {
    struct InterfaceAbi { uint256 result; constructor() public { } }

    function getInterfaceAbiUsingConstructor(InterfaceAbi memory interfaceAbi) payable external {}
    function getInterfaceAbiUsingMethodCall(InterfaceAbi memory interfaceAbi, uint256 param1, address payable caller) public payable {}


    function getAndCallInterface() external payable returns(bytes memory returnData) {
        interface IInterfaceInterface;
        IInterfaceInterface iInterfaceInterface = IInterfaceInterface(msg.sender);
        (returnData,) = iInterfaceInterface.bar256(128u);
    }

    function getAndConvertInterface() public returns(uint256 retValue) {
        interface IInterfaceInterface;
        IInterfaceInterface iInterfaceInterface = IInterfaceInterface(msg.sender);
        uint256 x = iInterfaceInterface.bar256(128u);

        uint256 y;
        assembly { y := return(x, mload(1000)) }

        retValue = cast(y);
    }

    function getAndConvertInterfaceUsingConstantReturn() constant public returns(bytes memory returnData) {
        interface IInterfaceInterface;
        IInterfaceInterface iInterfaceInterface = IInterfaceInterface(msg.sender);
        (returnData,) = iInterfaceInterface.bar256(128u);
    }

    function getAndUseConvertInterface() public returns(uint256 retValue) {
        interface IInterfaceInterface;
        IInterfaceInterface iInterfaceInterface = new IInterfaceInterface();
        uint256 x = iInterfaceInterface.bar256(128u);

        (retValue,) = iInterfaceInterface.bar256(128u);

        retValue = uint256(retValue);
    }

}
