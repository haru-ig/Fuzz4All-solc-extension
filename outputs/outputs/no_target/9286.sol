pragma solidity ^0.8.0;
contract semanticallyEquiv2 {
    function semanticsEquiv2 (
    )public pure returns(bytes4){}{
        return uint(keccak256(abi.encodePacked((
        "function semanticallyEquiv2()",
        "function semanticsEquiv2() public pure returns(bytes4)"
    )));
    }
}
contract semanticallyEquiv3 {
    function semanticsEquiv3 (
    )public pure returns(bytes4)[]{
        return uint(keccak256(abi.encodePacked((
        "function semanticsEquiv3()",
        "function semanticsEquiv3() public pure returns(bytes4)"
    )));
    }
}
contract semanticallyEquiv1{
    function semanticsEquiv1(
    ) public pure returns(bytes4){
        return uint(keccak256(abi.encodePacked((
        "function semanticsEquiv1()",
        "function semanticsEquiv1() public pure returns(bytes4)"
    )));
    }
}
contract semanticallyEquiv0 {
    function semanticsEquiv0(
    ) public pure returns(bytes4){
        return uint(keccak256(abi.encodePacked((
        "function semanticsEquiv0()",
        "function semanticsEquiv0() public pure returns(bytes4)"
    )));
    }
}
