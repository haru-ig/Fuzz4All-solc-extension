pragma solidity ^0.8.0;

contract Wrapper {
    abi SemanticallyEquivApp[4] _semanticallyEquivAppArray;
    function changeContractType(address newType) {
        _semanticallyEquivAppArray[0].send(abi.encodeWithSignature("changeSemanticallyEquivAppType(address)", newType));
    }

    function changeSemanticallyEquivAppType(SemanticallyEquivApp newType) {
        changeContractType(address(newType));
    }
}

pragma solidity ^0.8.0;

contract Wrapper {

    SemanticallyEquivApp __semanticallyEquivApp__ = new SemanticallyEquivApp();

    function changeSemanticallyEquivAppType(SemanticallyEquivApp newType) {
        __semanticallyEquivApp__.changeSemanticallyEquivAppType(newType);
    }

    function changeContractType(address newType) {
        __semanticallyEquivApp__ = newType;
    }
}

pragma solidity ^0.8.0;
contract Wrapper {
    abi Wrapper [2] _array;
    function changeMethod() {




        _array[1].changeSemanticallyEquivAppType(Wrapper__SemanticallyEquivApp_014());
    }

    function changeSemanticallyEquivAppType(SemanticallyEquivApp newType) {
        _array[0].changeSemanticallyEquivAppType(newType);
